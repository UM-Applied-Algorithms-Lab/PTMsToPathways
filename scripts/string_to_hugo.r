## ============================================================
## STRING-db v12.0 full network -> HUGO gene symbols
## Input:  9606.protein.links.detailed.v12.0.txt.gz
## Output: string_hs_hugo.tsv
##
## Mirrors the column structure of GetSTRINGdb.edges():
##   source | target | interaction | Weight
## but covers the full proteome (no node filtering).
##
## Requirements: data.table, STRINGdb
## ============================================================

library(data.table)

# ---- Configuration ------------------------------------------
string_file <- "9606.protein.links.detailed.v12.0.txt"  # adjust path as needed
out_file    <- "string_hs_hugo.tsv"

# ---- 1. Load full network file ------------------------------
message("Reading STRING network file...")
net <- fread(string_file, sep = " ", header = TRUE)
# Columns: protein1 protein2 neighborhood fusion cooccurence
#          coexpression experimental database textmining combined_score
message("  Rows: ", format(nrow(net), big.mark = ","))

# Keep the full "9606.ENSP..." IDs — get_proteins() returns them with the prefix

# ---- 2. Get HUGO mapping via STRINGdb -----------------------
# STRINGdb$get_proteins() returns a table with:
#   protein_external_id  (= full ID with taxon prefix, e.g. 9606.ENSP00000000233)
#   preferred_name       (= HUGO gene symbol)
message("Initialising STRINGdb and fetching protein name table...")
if (!requireNamespace("STRINGdb", quietly = TRUE))
  stop("Please install STRINGdb: BiocManager::install('STRINGdb')")

string_db <- STRINGdb::STRINGdb$new(
  version        = "12.0",
  species        = 9606,
  score_threshold = 0,
  network_type   = "full",
  input_directory = ""      # uses temp dir; set to a path to cache locally
)

proteins <- as.data.table(string_db$get_proteins())
# proteins columns: protein_external_id, preferred_name
setkey(proteins, protein_external_id)
message("  Protein records: ", format(nrow(proteins), big.mark = ","))

# ---- 3. Translate ENSP -> HUGO ------------------------------
message("Mapping protein IDs to HUGO symbols...")
net[proteins, Gene1 := i.preferred_name, on = .(protein1 = protein_external_id)]
net[proteins, Gene2 := i.preferred_name, on = .(protein2 = protein_external_id)]

n_before <- nrow(net)
net <- net[!is.na(Gene1) & !is.na(Gene2)]
message("  Mapped: ", format(nrow(net),    big.mark = ","), " edges")
message("  Dropped (no symbol): ", format(n_before - nrow(net), big.mark = ","))

# ---- 4. Assign interaction type (mirrors GetSTRINGdb.edges) -
# Priority order matches the original function's logic:
#   experimental > experimental_transferred (= textmining col is absent here;
#   STRING detailed file has: experimental, database, and their _transferred versions
#   as well as neighborhood, fusion, cooccurence, coexpression, textmining)
#
# Column names in the detailed file:
#   neighborhood  fusion  cooccurence  coexpression
#   experimental  database  textmining  combined_score
# (No _transferred columns in the flat file — those are internal STRING scores)

net[, interaction := "STRINGdb"]
net[database     > 0, interaction := "database"]
net[experimental > 0, interaction := "experimental"]

# ---- 5. Weight = sum of evidence channels -------------------
# Mirrors: rowSums of experiments + database in the original function.
# Here we use experimental + database (the two curated channels).
# combined_score is also available if you prefer a single canonical score.
net[, Weight := experimental + database]

# ---- 6. Final table -----------------------------------------
# Only keep edges with at least one curated evidence channel
# (experimental or database > 0). Remove if you want all edges.
curated <- net[experimental > 0 | database > 0]
message("  Curated edges (experimental or database > 0): ",
        format(nrow(curated), big.mark = ","))

final <- curated[, .(
  source      = Gene1,
  target      = Gene2,
  interaction,
  Weight,
  neighborhood,
  fusion,
  cooccurence,
  coexpression,
  experimental,
  database,
  textmining,
  combined_score
)]

setorder(final, source, target)

fwrite(final, out_file, sep = "\t", quote = FALSE)
message("\nDone.")
message("Rows written : ", format(nrow(final), big.mark = ","))
message("Output file  : ", out_file)

# ---- 7. Summary ---------------------------------------------
message("\nEdge counts by interaction type:")
print(final[, .N, by = interaction][order(-N)])

message("\nScore distribution (combined_score):")
print(summary(final$combined_score))
