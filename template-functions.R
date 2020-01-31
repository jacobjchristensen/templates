# ---
# Some useful functions
# by: Jacob J. Christensen
# ---

# Create p-value groups
create_pvalue_groups <- function(p.value){
  if_else(p.value < 0.001, true = "< 0.001", 
  if_else(p.value < 0.01, true = "< 0.01", 
  if_else(p.value < 0.05, true = "< 0.05", false = "\u2265 0.05"))) %>% 
    factor(levels = c("< 0.001", "< 0.01", "< 0.05", "\u2265 0.05"))
}

# Create p-value groups (with stars)
create_pvalue_groups_stars <- function(p.value){
  if_else(p.value < 0.001, true = "***", 
  if_else(p.value < 0.01, true = "**", 
  if_else(p.value < 0.05, true = "*", false = "")))
}

# Create FDR-value groups
create_fdr_groups <- function(fdr.value){
  if_else(fdr.value < 0.1, true = "< 0.1", 
  if_else(fdr.value < 0.15, true = "< 0.15", 
  if_else(fdr.value < 0.20, true = "< 0.20", false = "\u2265 0.20"))) %>% 
    factor(levels = c("< 0.1", "< 0.15", "< 0.20", "\u2265 0.20"))
}

# if_else statement for y_nudge in geom_text
my_nudge_y <- function(variable, divid = 7.5){
  if_else(variable > 0, 
          true = max(abs(variable), na.rm = TRUE) / divid, 
          false = -max(abs(variable), na.rm = TRUE) / divid)
}

# Take exponential to undo a log transformation
take_exponential <- function(vector, exp = 2){
  exp^(vector)
}

# Remove columns with all NAs
discard_all_na_cols <- function(data) {
  index <- data %>% map_lgl(~all(is.na(.)))
  data[, !index]
}
