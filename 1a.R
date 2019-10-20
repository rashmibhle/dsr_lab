print(getwd())
setwd("F:/7th sem/7th SEM/DSR/Dataset/Dataset")
data1 = read.csv("bank-data.csv")
data2 = data1[,sapply(data1, is.integer)]
plot(data2,xlab="Age",ylab="Children",main="Children among the different age grouped parents")

