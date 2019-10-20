
library(rpart)
library(rpart.plot)
dataset = read.csv("F:/7th sem/7th SEM/DSR/Dataset/Dataset/Mail_Respond.csv")

dataset

part = rpart(Outcome~District+House.Type+Income+Previous_Customer,control = rpart.control(minsplit = 1), parms= list(split="information"), data = dataset)
part

rpart.plot(part, type= 2,extra=4)