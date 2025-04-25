library(ggplot2)
library(gridExtra)

p1 <- ggplot(df, aes(x=pts)) + 
  geom_histogram(fill="blue", bins=30) + 
  ggtitle("Points Distribution") +
  theme_minimal()

p2 <- ggplot(df, aes(x=ast)) + 
  geom_density(fill="red", alpha=0.5) + 
  ggtitle("Density Plot of Assists") +
  theme_minimal()

grid.arrange(p1, p2, ncol=2)  # Display side by side

