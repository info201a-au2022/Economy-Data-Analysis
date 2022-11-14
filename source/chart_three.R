# source file that creates your third chart
credit_classification <- read.csv("/Users/amyofor/Documents/info201/project-group-7-section-ab/data/test.csv/test.csv",stringsAsFactors = FALSE)
View(credit_classification)
install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
plot_of_age_vs_annualincome <- ggplot(data = credit_classification) +
  geom_col(mapping = aes(x = Age, y = Annual_Income))+
  scale_y_continuous(labels = scales::comma)
plot_of_age_vs_annualincome