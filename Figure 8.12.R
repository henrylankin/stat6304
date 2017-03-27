#data
y.1 <- c(3, 17, 12, 10, 4)
y.2 <- c(19, 10, 9, 7, 5)
y.3 <- c(25, 15, 12, 9, 8)
y <- c(y.1, y.2, y.3)

#means
mean.1 <- mean(y.1)
mean.2 <- mean(y.2)
mean.3 <- mean(y.3)

#errors
errors.1 <- y.1 - mean.1
errors.2 <- y.2 - mean.2
errors.3 <- y.3 - mean.3
errors <- c(errors.1, errors.2, errors.3)

#normality check
boxplot(errors)
qqnorm(errors, main = "Normal Q-Q Plot Residuals")
qqline(errors)

#levene test for variances
soy.1 <- rep(1, length(errors.1))
soy.2 <- rep(2, length(errors.2))
soy.3 <- rep(3, length(errors.3))
soy <- c(soy.1, soy.2, soy.3)
lev.result <- levene.test(y, soy)
print(lev.result)

print(shapiro.test(errors))
