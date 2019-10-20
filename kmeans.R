dataset = read.csv("F:/7th sem/7th SEM/DSR/Dataset/Dataset/Correlation.csv")
dataset
let = vector(length=6)
for(i in 1:6){
  let[i] = sum(kmeans(center= i, nstart = 10, dataset)$withinss)
}
plot(let)


m = kmeans(center = 2, nstart = 10, dataset)
m

m$cluster
m$centers
m$totss
m$withinss
m$betweenss

plot(dataset[m$cluster==1,],col = "red", xlim = c(min(dataset[,1]), max(dataset[,1])), ylim = c(min(dataset[,2]), max(dataset[,2])))
points(dataset[m$cluster==2,], col = "blue")
