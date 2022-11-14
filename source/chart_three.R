# source file that creates your third chart
credit_classification <- read.csv("../data/credit_class.csv")

library(tidyverse)
library(ggplot2)

plot_of_age_vs_annualincome <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Annual_Income, fill = Occupation)) +
  scale_y_continuous(labels = scales::comma)


