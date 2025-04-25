library(ggplot2)

ggplot(df, aes(x=factor(player_height), y=reb)) +  # Convert height to factor
  geom_boxplot(fill="steelblue", alpha=0.6) + 
  ggtitle("Boxplot of Rebounds by Height") +
  xlab("Player Height (Grouped)") +
  ylab("Rebounds") +
  theme_minimal()

