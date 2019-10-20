library(e1071)
dataset = read.csv("F:/7th sem/7th SEM/DSR/Dataset/Dataset/Mail_Respond.csv")

dataset

prior = table(dataset$Outcome)
prior = prior/sum(prior)
prior

districtCounts = table(dataset[,c("Outcome", "District")])
districtCounts

HouseCounts = table(dataset[,c("Outcome", "House.Type")])
HouseCounts

IncomeCounts = table(dataset[,c("Outcome", "Income")])
IncomeCounts

Previous_CustomerCounts = table(dataset[,c("Outcome", "Previous_Customer")])
Previous_CustomerCounts


prob_Responded = districtCounts["Responded", dataset[,c("District")]]+
  HouseCounts["Responded", dataset[,c("House.Type")]]+
  IncomeCounts["Responded", dataset[,c("Income")]]+
  Previous_CustomerCounts["Responded", dataset[,c("Previous_Customer")]]+
  prior["Responded"]



prob_notResponded = districtCounts["No Response", dataset[,c("District")]]+
  HouseCounts["No Response", dataset[,c("House.Type")]]+
  IncomeCounts["No Response", dataset[,c("Income")]]+
  Previous_CustomerCounts["No Response", dataset[,c("Previous_Customer")]]+
  prior["No Response"]


max(prob_notResponded, prob_Responded)

b = naiveBayes(Outcome~District+House.Type+Income+Previous_Customer, data = dataset)
b

pred = predict(b, dataset[2,])
pred

