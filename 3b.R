num = list(1,2,3,4)

char = list("a", "b", "c", "d")

re = list(1.22, 6,9.0, 8.67)

names = c("number", "character", "real number")

c1 = c(num, char, re)
print(c1)
m = matrix(c1, nrow = 4, ncol = 3,dimnames = list(num,names))

print(m)