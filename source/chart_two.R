# source file that creates your second chart
install.packages("tidyverse")
install.packages("ggplot")

library(tidyverse)
library(ggplot2)
getwd()

# Dataframe
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)

#density plot
annual_income_credit <- ggplot(credit_class, aes(x = Annual_Income, fill = Credit_Mix)) +
  geom_density(alpha = 0.4) + 
  scale_y_continuous(labels = scales :: comma) +
  labs(title = "Income distribution by credit")
annual_income_credit



