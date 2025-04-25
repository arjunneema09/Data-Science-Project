library(ggplot2)

ggplot(df, aes(x=ts_pct, y=pts)) +
  geom_point(alpha=0.6, color="blue") +  # Scatter points
  geom_smooth(method="lm", color="red", se=FALSE) +  # Add regression line
  ggtitle("Relationship Between True Shooting % and Points") +
  xlab("True Shooting Percentage (TS%)") +
  ylab("Total Points") +
  theme_minimal()
