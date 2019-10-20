setwd("F:/7th sem/7th SEM/DSR/Dataset/Dataset")
R = read.delim("bank-data.csv",sep=",")
r = head(R, 6)
parents = c("Married", "Divorced","Married", "Married", "Divorced", "Divorced")
r$Parents = parents
print(parents)
print(r$married)
print(r)
write.csv("bank-parent.csv", x = r,row.names = FALSE)