library(tidyverse)
library(rstatix)
library (ggplot2)


# script used to analyze plasmid stability in simple (soil-only microcosms) and complex(soil and synthetic communities) soil microcosms
#From input file, Day_0 - Day_3 correspond to simple microcosms. While Day_4 correspond to complex microcosms.


data_1 <- read.csv("data_simple_complex.csv")
data_2 <- data_1 %>%
  pivot_longer (cols = c ("gent.0", "gent.20"), names_to = "gentamicin", values_to = "count")

#running multiple pairwise comparisons
stat.test <- data_2 %>%
  group_by(Day)%>%
  t_test (count ~ gentamicin, paired = TRUE, detailed = TRUE)%>% #count values have to go before ~ then sample name in order for equation to work)
  add_significance()
stat.test

write.csv(stat.test,"Paired_t_test_simple_complex.csv", row.names = TRUE)



