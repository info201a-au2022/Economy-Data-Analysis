# source file that creates your second chart
getwd()
install.packages("tidyverse")
install.packages("ggplot")
library(tidyverse)
library(ggplot2)

# Dataframe
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
#View(credit_class)
age_credit_mix <- ggplot(credit_class, aes(x = Age, y = Annual_Income, fill = Credit_Mix)) + 
  geom_bar(width = 1, stat = "identity") 
age_credit_mix
pie <- age_credit_mix + coord_polar("y")
pie