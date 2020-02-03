library(MASS)

summary(birthwt)
# here
boxplot(age~ht, data = birthwt, range= 0, ylab = "ageyear", xlab="Height")
