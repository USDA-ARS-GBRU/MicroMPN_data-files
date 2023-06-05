library(tidyverse)
library(rstatix)
library (ggplot2)


# script uses to analyse plasmid stability in simple and complex soil microcosms

data_1 <- read.csv("data_simple_complex.csv")#to run the analysis with simplex and complex plasmid stability chnage filename to data_simple_complex.csv
data_2 <- data_1 %>%
  pivot_longer (cols = c ("gent.0", "gent.20"), names_to = "gentamicin", values_to = "count")

#running multiple pairwise comparisons
stat.test <- data_2 %>%
  group_by(Day)%>%
  t_test (count ~ gentamicin, paired = TRUE, detailed = TRUE)%>% #count values have to go before ~ then sample name in order for equation to work)
  add_significance()
stat.test

write.csv(stat.test,"Paired_t_test_simple_complex.csv", row.names = TRUE)



