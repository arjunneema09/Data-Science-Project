library(caret)         # For RFE function
library(randomForest)  # For rfFuncs (random forest feature selection)
library(e1071)  

set.seed(123)  # Ensures reproducibility
df_sample <- df[sample(1:nrow(df), 500), ]  # Selects 500 random rows
control <- rfeControl(functions=rfFuncs, method="cv", number=5)
rfe_model <- rfe(df_sample[, -which(names(df_sample) == "pts")], 
                 df_sample$pts, 
                 sizes=c(1:5), 
                 rfeControl=control)

print(rfe_model)


