RFAcat$Score <- Pros_Score$fitted.values
ggthemr::ggthemr('fresh', layout = 'scientific')
RFAcat %>%
  ggplot(aes(x = Score, y= ..density.., fill = as.factor(rfa))) + 
  geom_histogram(position = "identity", color = "black", alpha = 0.5) +
  geom_density(alpha = 0.2) +
  theme(axis.title = element_text(size = 17), axis.text = element_text(size = 14),
        axis.line = element_line(colour = "black"),
        panel.border = element_blank(),
        panel.background = element_blank()) +
  ggtitle("Density and histogram of the estimated \npropensity score in the two exposure groups.") +
  theme(title = element_text(size = 20),
        plot.title = element_text(hjust=0.5),
        legend.text = element_text(size = 19), 
        legend.title = element_text(size = 19),
        legend.position = "bottom", legend.direction = "horizontal") +
  labs(fill = "Treatment Methods") + 
  scale_fill_discrete(labels = c("Standard surgery", "RFA")) 
ggthemr::ggthemr_reset()