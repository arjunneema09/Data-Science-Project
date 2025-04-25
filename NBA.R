df <- read.csv("nbarecord.csv")
head(df)
summary(df)
colSums(is.na(df))  # Count missing values per column

