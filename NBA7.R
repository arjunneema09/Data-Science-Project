library(ggplot2)

ggplot(df, aes(x=player_height, y=reb)) + 
  geom_violin(fill="lightblue", alpha=0.6) + 
  ggtitle("Violin Plot of Rebounds by Height") +
  theme_minimal()
