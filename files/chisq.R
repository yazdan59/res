# Chi Square test in R is a statistical method which is being used to determine 
# if two categorical variables have a significant correlation between them.
# 
# H0: The The two variables are independent
# H1: The two variables are related.

data <- read.csv("treatment.csv")
table(data$treatment, data$improvement)

chisq.test(data$treatment, data$improvement)
?chisq.test