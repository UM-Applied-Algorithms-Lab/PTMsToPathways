## ============================================================
## GeneMANIA Homo sapiens interaction network download
## Groups: Physical Interactions, Predicted, Pathway,
##         Genetic Interactions
## Output: TSV with HUGO gene symbols + edge weights + metadata
## ============================================================
## Requirements: data.table (install.packages("data.table"))
## ============================================================
# Result
# GM_HUGO <- read.table(file="/Users/markgrimes/Library/CloudStorage/Dropbox/_Work/R_/_NCSC_project/Hellgate Cluster/PPI_data/hs_interactions_hugo.tsv", header = TRUE, sep = "\t")
# dim 6389770       6
# Alternatively (faster)
# library(data.table)
# GM_HUGO <- fread("...path.../hs_interactions_hugo.tsv")

library(data.table)

# ---- Configuration ------------------------------------------
base_url <- "https://genemania.org/data/current/Homo_sapiens/"
outdir <- "/mnt/beegfs/scratch/mg168763e/MG/PPI_data/genemania_hs"
out_file <- file.path(outdir, "hs_interactions_hugo.tsv")

target_groups <- c(
  "Physical Interactions",
  "Predicted",
  "Pathway",
  "Genetic Interactions"
)

dir.create(path.expand(outdir), showWarnings = FALSE, recursive = TRUE)

# ---- Helper: download if not cached -------------------------
dl <- function(url, dest, ...) {
  if (!file.exists(dest)) {
    message("Downloading: ", basename(dest))
    tryCatch(
      download.file(url, dest, mode = "wb", quiet = TRUE, ...),
      error = function(e) message("  FAILED: ", e$message)
    )
  }
  invisible(file.exists(dest))
}

# ---- 1. identifier_mappings.txt  ----------------------------
# Preferred_Name = UniProt accession (this is what network files use)
# Name           = HUGO symbol       (when Source == "Gene Name")
id_map_file <- file.path(path.expand(outdir), "identifier_mappings.txt")
dl(paste0(base_url, "identifier_mappings.txt"), id_map_file)

message("Reading identifier mappings...")
id_map <- fread(id_map_file, sep = "\t", header = TRUE,
                colClasses = "character")

# Build UniProt -> HUGO lookup
hugo_map <- id_map[Source == "Gene Name", .(Preferred_Name, HUGO = Name)]
hugo_map <- hugo_map[!duplicated(Preferred_Name)]   # one symbol per accession
setkey(hugo_map, Preferred_Name)
message("  Mapped ", nrow(hugo_map), " UniProt accessions to HUGO symbols")

# ---- 2. networks.txt  ---------------------------------------
nets_file <- file.path(path.expand(outdir), "networks.txt")
dl(paste0(base_url, "networks.txt"), nets_file)

nets <- fread(nets_file, sep = "\t", header = TRUE, colClasses = "character")
# Exact column names: File_Name, Network_Group_Name, Network_Name, Source, Pubmed_ID
nets_subset <- nets[Network_Group_Name %in% target_groups]

message("\nFile counts by group:")
print(nets_subset[, .N, by = Network_Group_Name])

# ---- 3. Download & parse each network file ------------------
all_edges <- vector("list", nrow(nets_subset))

for (i in seq_len(nrow(nets_subset))) {
  row      <- nets_subset[i]
  fname    <- row$File_Name
  grp      <- row$Network_Group_Name
  net_name <- row$Network_Name
  src      <- row$Source

  local_f  <- file.path(path.expand(outdir), fname)
  remote_f <- paste0(base_url, fname)

  if (!dl(remote_f, local_f)) next

  edges <- tryCatch(
    fread(local_f, sep = "\t", header = TRUE,
          col.names = c("UniProt_A", "UniProt_B", "Weight"),
          colClasses = c("character", "character", "numeric")),
    error = function(e) {
      message("  Parse error in ", fname, ": ", e$message)
      NULL
    }
  )
  if (is.null(edges) || nrow(edges) == 0L) next

  edges[, `:=`(Group = grp, Network = net_name, Source = src)]
  all_edges[[i]] <- edges

  if (i %% 50 == 0)
    message("  Processed ", i, " / ", nrow(nets_subset), " files...")
}

message("\nCombining edge lists...")
combined <- rbindlist(all_edges, fill = TRUE, use.names = TRUE)
message("  Total raw edges: ", format(nrow(combined), big.mark = ","))

# ---- 4. Translate UniProt -> HUGO ---------------------------
combined[hugo_map, Gene1 := i.HUGO, on = .(UniProt_A = Preferred_Name)]
combined[hugo_map, Gene2 := i.HUGO, on = .(UniProt_B = Preferred_Name)]

# Drop rows where either gene lacks a HUGO symbol
combined_hugo <- combined[!is.na(Gene1) & !is.na(Gene2)]
message("  Edges with HUGO symbols for both genes: ",
        format(nrow(combined_hugo), big.mark = ","))
message("  Dropped (no HUGO mapping): ",
        format(nrow(combined) - nrow(combined_hugo), big.mark = ","))

# ---- 5. Final table -----------------------------------------
# Column order matches the requested format:
# Gene1  Gene2  Weight  Network  Source  Group
final <- combined_hugo[, .(
  Gene1,
  Gene2,
  Weight,
  Network,   # e.g. "Abbasi-Schild-Poulter-2019"  (= Network_Name)
  Source,    # e.g. "BIOGRID", "IREF", "REACTOME"
  Group      # e.g. "Physical Interactions"
)]

# Sort for readability
setorder(final, Group, Network, Gene1, Gene2)

fwrite(final, out_file, sep = "\t", quote = FALSE)
message("\nDone.")
message("Rows written : ", format(nrow(final), big.mark = ","))
message("Output file  : ", out_file)

# Quick summary
message("\nEdge counts by interaction group:")
print(final[, .N, by = Group][order(-N)])
