
data1 = c(10, 1, 37, 5 ,12)
data2 = c(8,3,9,6,4)
data3 = c(18,9,1,2,4)
data4 = c(8, 27,6,32,23)
data5 = c(12,13,16,9,10)

bees = c("Buff tail", "Garden Bee", "Red tail", "Carder Bee", "Honey Bee")

plants = list("Thistle", "Vipers", "Golden Rain", "Yellowalfala", "Blackberry")

c1 = c(data1, data2, data3 ,data4, data5)

matrix(c1, nrow= 5, dimnames = list(plants, bees))