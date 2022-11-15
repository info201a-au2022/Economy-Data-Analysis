# source file that creates your third chart
credit_classification <- read.csv("../data/credit_class.csv")

library(tidyverse)
<<<<<<< HEAD
install.packages("ggplot2")
annual_income <- credit_classification$Annual_Income
max_annual_income <- max(annual_income)
print(max_annual_income)
view(annual_income)
plot_of_age_vs_occupation <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Occupation, fill = Annual_Income)) +
  xlim(0,100)
plot_of_age_vs_occupation
=======
library(ggplot2)

plot_of_age_vs_annualincome <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Annual_Income, fill = Occupation)) +
  scale_y_continuous(labels = scales::comma)

>>>>>>> refs/remotes/origin/main

