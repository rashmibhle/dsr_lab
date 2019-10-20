

dataset = read.csv("F:/7th sem/7th SEM/DSR/Dataset/Dataset/Resort_visit.csv")

dataset

fit = glm(formula = Resort_Visit~Family_Income+Attitude.Towards.Travel, data=dataset, family = binomial(link = "logit"))


fit

plot(coef(fit) ,col="red")
