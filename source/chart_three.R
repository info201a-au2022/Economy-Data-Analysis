# source file that creates your third chart
credit_classification <- read.csv("../data/credit_class.csv")
View(credit_classification)
getwd()
install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
annual_income <- credit_classification$Annual_Income
max_annual_income <- max(annual_income)
print(max_annual_income)
view(annual_income)
plot_of_age_vs_occupation <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Occupation, fill = Annual_Income)) +
  xlim(0,100)
plot_of_age_vs_occupation

