credit_classification <- read_csv("../data/credit_class.csv")
View(credit_classification)
library(ggplot2)
plot_of_age_vs_occupation <- ggplot(data = credit_classification) +
   geom_col(mapping = aes(x = Age, y = Occupation, fill = Annual_Income)) +
  xlim(0,100) +
  ggtitle("Annual Income in Relation to Age and Occupation")
plot_of_age_vs_occupation
