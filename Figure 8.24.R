#data
kilo.1 <- c(1, 5, 2, 1, 2, 2, 4, 3, 0, 2)
kilo.5 <- c(4, 8, 2, 3, 8, 5, 6, 4, 3, 3)
kilo.10 <- c(20, 26, 24, 11, 28, 20, 19, 19, 21, 24)
kilo.20 <- c(37, 30, 26, 24, 41, 25, 36, 31, 31, 33)

#organize data
measurements <- c(kilo.1, kilo.5, kilo.10, kilo.20)
v <- c(1:10)
sampleIndex <- c(v, v, v, v)
levelIndex <- c(rep(1,10), rep(5,10), rep(10,10), rep(20,10))
levelIndex <- factor(levelIndex)
kilos <- data.frame(levelIndex, sampleIndex, measurements)

#Kruskal-Wallis test
print(kruskal.test(measurements~levelIndex))