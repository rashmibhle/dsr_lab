

dataset = read.csv("F:/7th sem/7th SEM/DSR/Dataset/Dataset/Mult_Reg_Yield.csv")

dataset

fit = lm(formula = X.Yield~Time+Temperature, data=dataset)

fit

pred = fitted(fit,dataset)

pred

confint(fit, level=0.95)

pred1 = predict(fit, interval = "prediction", level = 0.95)

pred1

plot(pred, col = "red")

abline(coef(fit),lty=1,col="blue")
#plotting residuals
plot(fit,which=1) 

residuals(fit)