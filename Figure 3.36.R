names(homeOwnRates) <- c("State", "1985", "1996", "2002")
boxplot(homeOwnRates[2:4], main = "Figure 3.36: Home Ownership Rates - 1985, 1996, 2002",
     xlab = "year", ylab = "home ownership rates")
summary.1985 <- summary(homeOwnRates$`1985`)
summary.1996 <- summary(homeOwnRates$`1996`)
summary.2002 <- summary(homeOwnRates$`2002`)
print(summary.1985)
print(summary.1996)
print(summary.2002)
