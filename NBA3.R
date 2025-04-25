library(ggplot2)
library(corrplot)

 corr_matrix <- cor(df[,sapply(df, is.numeric)], use="complete.obs")
corrplot(corr_matrix, method="color", type="upper", tl.col="black", tl.srt=45)



