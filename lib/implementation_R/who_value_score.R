library(hbgd)
score <- who_value2zscore(1670, lb2kg(48), y_var = "wtkg")
cat(score)
