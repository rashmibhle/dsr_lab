library(MASS)

summary(birthwt)
boxplot(age~ht, data = birthwt, range= 0, ylab = "ageyear", xlab="Height")
