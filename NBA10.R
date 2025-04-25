library(dplyr)
library(ggplot2)
library(corrplot)
library(caret)
library(glmnet)


# Find highly correlated features (above 0.8)
high_corr <- findCorrelation(corr_matrix, cutoff=0.8)
selected_features_corr <- names(df)[-high_corr]
print(selected_features_corr)




