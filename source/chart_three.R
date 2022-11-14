# source file that creates your third chart
credit_classification <- read.csv("../data/credit_class.csv")
View(credit_classification)
getwd()
install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
plot_of_age_vs_annualincome <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Annual_Income, fill = Occupation)) +
  scale_y_continuous(labels = scales::comma)
plot_of_age_vs_annualincome

