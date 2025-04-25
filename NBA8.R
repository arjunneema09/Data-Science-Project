library(ggplot2)

ggplot(df, aes(x=draft_number, y=pts)) +
  geom_point(alpha=0.6, color="blue") +  # Scatter points
  geom_smooth(method="lm", color="red", se=FALSE) +  # Add trend line
  ggtitle("Relationship Between Draft Number and Points") +
  xlab("Draft Number") +
  ylab("Total Points") +
  theme_minimal()
