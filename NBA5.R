library(ggplot2)


ggplot(df, aes(x=pts, y=ast)) + 
  geom_point(alpha=0.6, color="darkgreen") + 
  ggtitle("Points vs Assists") +
  theme_minimal()
