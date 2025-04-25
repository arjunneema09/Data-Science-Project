library(ggplot2)
library(corrplot)
library(dplyr)
numeric_vars <- df %>% select(where(is.numeric))  # Select only numeric columns
corr_matrix <- cor(numeric_vars, use="complete.obs")
corrplot(corr_matrix, method="color", type="upper", tl.col="black", tl.srt=45)
