#data
kilo.1 <- c(1, 5, 2, 1, 2, 2, 4, 3, 0, 2)
size.1 <- length(kilo.1)
kilo.5 <- c(4, 8, 2, 3, 8, 5, 6, 4, 3, 3)
size.5 <- length(kilo.5)
kilo.10 <- c(20, 26, 24, 11, 28, 20, 19, 19, 21, 24)
size.10 <- length(kilo.10)
kilo.20 <- c(37, 30, 26, 24, 41, 25, 36, 31, 31, 33)
size.20 <- length(kilo.20)
sizes <- c(size.1, size.5, size.10, size.20)

#organize data
measurements <- c(kilo.1, kilo.5, kilo.10, kilo.20)
overall.mean <- mean(measurements)
v <- c(1:10)
sampleIndex <- c(v, v, v, v)
levelIndex <- c(rep(1,10), rep(5,10), rep(10,10), rep(20,10))
levelIndex <- factor(levelIndex)
kilos <- data.frame(levelIndex, sampleIndex, measurements)

#ANOVA test
print(aov(measurements~levelIndex))
results <- aov(measurements~levelIndex)
print(summary(results))

#log data
measurements.transform <- sqrt(measurements + 0.375)
kilos.transform <- data.frame(levelIndex, sampleIndex, measurements.transform)

#ANOVA test
print(aov(measurements.transform~levelIndex))
results <- aov(measurements.transform~levelIndex)
print(summary(results))

#calculating SSB
mean.1 <- mean(kilo.1)
mean.5 <- mean(kilo.5)
mean.10 <- mean(kilo.10)
mean.20 <- mean(kilo.20)
kilo.means <- c(mean.1, mean.5, mean.10, mean.20)

SSB <- sum(sizes*(kilo.means - overall.mean)^2)
print(sprintf("SSB = %f", SSB))

#calculating SSW
sd.1 <- sd(kilo.1)
sd.5 <- sd(kilo.5)
sd.10 <- sd(kilo.10)
sd.20 <- sd(kilo.20)
kilo.sd <- c(sd.1, sd.5, sd.10, sd.20)

SSW <- sum((sizes - 1)*kilo.sd^2)
print(sprintf("SSW = %f", SSW))

#calculating MSB, MSW and test stat F
MSB <- SSB/(length(kilo.means)-1)
MSW <- SSW/(length(measurements)-length(kilo.means))
print(sprintf("MSB = %f   MSW = %f", MSB, MSW))
testStat <- MSB/MSW
print(sprintf("test stat F = %f", testStat))

#rejection region
critValue <- qf(0.05, df1 = length(kilo.means) - 1, df2 = length(measurements) - length(kilo.means), lower.tail = FALSE)
print(sprintf("rejection region F>%f", critValue))

result <- "do not reject"
if(testStat > critValue){
  result <- "reject"
}
print(result)
