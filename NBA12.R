library(glmnet)
library(Matrix)


x <- as.matrix(df[, -which(names(df) == "pts")])
y <- df$pts

lasso_model <- cv.glmnet(x, y, alpha=1)
coef(lasso_model, s="lambda.min")
print(lasso_model)
lasso_model$lambda.min  # Best lambda that minimizes error
lasso_model$lambda.1se  # More regularized lambda (1 standard error rule)
coef(lasso_model, s = "lambda.min")
selected_features <- coef(lasso_model, s = "lambda.min")
selected_features <- selected_features[selected_features[,1] != 0, , drop=FALSE]
print(selected_features)
plot(lasso_model)
# Make predictions using the trained LASSO model
 #predictions <- predict(lasso_model, newx = x, s = "lambda.min")

# Print predictions
 #print(predictions)

