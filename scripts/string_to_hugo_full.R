## ============================================================
## STRING-db v12.0 full network -> HUGO gene symbols
## Input : 9606.protein.links.full.v12.0.txt.gz
## Output: string_hs_hugo_full.tsv
##
## Output columns include direct and transferred evidence:
## source | target | interaction | Weight |
## neighborhood | fusion | cooccurence | coexpression |
## experiments | experiments_transferred |
## database | database_transferred |
## textmining | textmining_transferred |
## combined_score
##
## Requirements: data.table, STRINGdb
## ============================================================

library(data.table)

# ---- Configuration ------------------------------------------
string_file <- "/Users/markgrimes/Downloads/9606.protein.links.full.v12.0.txt"
out_file    <- "string_hs_hugo_full.tsv"

# Optional filtering during preprocessing:
species_prefix_only <- TRUE   # keep only 9606.* rows
min_combined_score  <- 0      # keep all rows; filter later in GetSTRINGdb.edges()

# ---- 1. Load STRING full network ----------------------------
message("Reading STRING full network file...")
net <- fread(string_file, sep = " ", header = TRUE, showProgress = TRUE)

message("Rows read: ", format(nrow(net), big.mark = ","))

# Keep Homo sapiens only if desired
if (species_prefix_only) {
  net <- net[
    grepl("^9606\\.", protein1) & grepl("^9606\\.", protein2)
  ]
  message("Human rows kept: ", format(nrow(net), big.mark = ","))
}

if ("combined_score" %in% names(net) && min_combined_score > 0) {
  net <- net[combined_score >= min_combined_score]
  message("Rows after combined_score filter: ", format(nrow(net), big.mark = ","))
}

# ---- 2. Get HUGO mapping via STRINGdb -----------------------
message("Initialising STRINGdb and fetching protein name table...")
if (!requireNamespace("STRINGdb", quietly = TRUE)) {
  stop("Please install STRINGdb: BiocManager::install('STRINGdb')")
}

string_db <- STRINGdb::STRINGdb$new(
  version = "12.0",
  species = 9606,
  score_threshold = 0,
  network_type = "full",
  input_directory = ""
)

proteins <- as.data.table(string_db$get_proteins())
setkey(proteins, protein_external_id)

message("Protein records: ", format(nrow(proteins), big.mark = ","))

# ---- 3. Translate STRING IDs -> preferred gene symbols ------
message("Mapping protein IDs to preferred gene symbols...")
net[proteins, Gene1 := i.preferred_name, on = .(protein1 = protein_external_id)]
net[proteins, Gene2 := i.preferred_name, on = .(protein2 = protein_external_id)]

n_before <- nrow(net)
net <- net[!is.na(Gene1) & !is.na(Gene2)]
message("Mapped rows: ", format(nrow(net), big.mark = ","))
message("Dropped rows with no symbol: ", format(n_before - nrow(net), big.mark = ","))

# ---- 4. Check expected evidence columns ---------------------
expected_cols <- c(
  "protein1", "protein2",
  "neighborhood", "neighborhood_transferred",
  "fusion",
  "cooccurence",
  "homology",
  "coexpression", "coexpression_transferred",
  "experiments", "experiments_transferred",   # <- fix here
  "database", "database_transferred",
  "textmining", "textmining_transferred",
  "combined_score"
)

missing_cols <- setdiff(expected_cols, names(net))
if (length(missing_cols) > 0) {
  stop(
    "The input file is missing expected columns from protein.links.full: ",
    paste(missing_cols, collapse = ", ")
  )
}

# ---- 5. Keep only rows with curated evidence ----------------
# Curated evidence here means direct or transferred experiments/database evidence.
curated <- net[
  experiments > 0 |
    experiments_transferred > 0 |
    database > 0 |
    database_transferred > 0
]

message("Curated rows kept: ", format(nrow(curated), big.mark = ","))

# ---- 6. Assign interaction type -----------------------------
# Priority order mirrors the live GetSTRINGdb.edges() behavior:
# experiments > experiments_transferred > database > database_transferred
curated[, interaction := "STRINGdb"]
curated[database_transferred > 0, interaction := "database_transferred"]
curated[database > 0,            interaction := "database"]
curated[experiments_transferred > 0, interaction := "experiments_transferred"]
curated[experiments > 0,        interaction := "experiments"]

# ---- 7. Build Weight ----------------------------------------
# Match live mode:
# experiments + experiments_transferred + database + database_transferred
curated[, Weight := experiments +
          experiments_transferred +
          database +
          database_transferred]

# ---- 8. Final table -----------------------------------------
final <- curated[, .(
  source = Gene1,
  target = Gene2,
  interaction,
  Weight,
  neighborhood,
  fusion,
  cooccurence,
  coexpression,
  experiments,
  experiments_transferred,
  database,
  database_transferred,
  textmining,
  textmining_transferred,
  combined_score
)]

setorder(final, source, target)
fwrite(final, out_file, sep = "\t", quote = FALSE)

message("\nDone.")
message("Rows written: ", format(nrow(final), big.mark = ","))
message("Output file: ", out_file)

message("\nEdge counts by interaction type:")
print(final[, .N, by = interaction][order(-N)])

message("\nCombined score summary:")
print(summary(final$combined_score))
