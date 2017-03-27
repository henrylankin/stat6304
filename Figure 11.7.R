###Question 11.7
writeLines("Question 11.7\n")
#import data and organize
ex11.7 <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH11/ex11-7.TXT", quote="'")
x <- ex11.7$x
y <- ex11.7$y

#scatterplot
plot(x, y, main = 'Figure 11.7: x vs. y', xlab = 'x', ylab = 'y')

#regression line
regression.line <- lm(y~x)
abline(regression.line)
regLine.summary <- summary(regression.line)
print(regLine.summary)

#print regression line
beta.0 <- regression.line$coefficients[1]
beta.1 <- regression.line$coefficients[2]
print(sprintf("beta-0 = %f", beta.0))
print(sprintf("beta-1 = %f", beta.1))
print(sprintf("Simple Regression Line (SRL): y = %f*(x) + %f", beta.1, beta.0))

#predict y value at x = xValue
xValue <- 1.5
y.predicted <- beta.1*xValue + beta.0
print(sprintf("y predicted at x=%g = %f", xValue, y.predicted))

##calculations of regression line
x.mean <- mean(x)
y.mean <- mean(y)
s.xx <- sum((x-x.mean)^2)
s.xy <- sum((x-x.mean)*(y-y.mean))
s.yy <- sum((y-y.mean)^2)
beta.1.calculated <- s.xy/s.xx
beta.0.calculated <- y.mean - beta.1.calculated*x.mean

#regression line
print(sprintf("calculated beta-0 = %f", beta.0.calculated))
print(sprintf("calculated beta-1 = %f", beta.1.calculated))
print(sprintf("Caculated Simple Regression Line (SRL): y = %f*(x) + %f", 
              beta.1.calculated, beta.0.calculated))


###Question 11.15
writeLines("\nQuestion 11.15\n")

##confidence interval around beta.1
alpha <- 0.05
conifdence.level <- 1-alpha
critValue <- qt(alpha/2, df = length(x) - 2, lower.tail = FALSE)
standardError.residuals <- sqrt(sum(regression.line$residuals^2)/regression.line$df.residual)
beta.1.sd <- standardError.residuals*sqrt(1/s.xx)
lower.1 <- beta.1 - critValue*beta.1.sd
upper.1 <- beta.1 + critValue*beta.1.sd
print(sprintf("%g percent confidence interval for beta.1: (%f, %f)", conifdence.level*100, lower.1, upper.1))

##hypothesis test
alpha <- 0.05
testStat.1 <- beta.1.calculated/beta.1.sd
print(sprintf("test statistic = %f", testStat.1))
result <- 'do not reject the null'
if (testStat.1 < -critValue | testStat.1 > critValue){
  result <- 'reject the null'
}
print(result)
pValue <- 2*pt(testStat.1, df = regression.line$df.residual, lower.tail = FALSE)
print(pValue)

###Question 11.16
writeLines("\nQuestion 11.16\n")

#confidence interval around beta.0
beta.0.sd <- standardError.residuals*sqrt(1/length(y) + x.mean^2/s.xx)
lower.0 <- beta.0 - critValue*beta.0.sd
upper.0 <- beta.0 + critValue*beta.0.sd
print(sprintf("%g percent confidence interval for beta.0: (%f, %f)", conifdence.level*100, 
              lower.0, upper.0))

##hypothesis test
alpha <- 0.05
testStat.0 <- beta.0.calculated/beta.0.sd
print(sprintf("test statistic = %f", testStat.0))
result <- 'do not reject the null'
if (testStat.0 < -critValue | testStat.0 > critValue){
  result <- 'reject the null'
}
print(result)
pValue <- 2*pt(testStat.0, df = regression.line$df.residual, lower.tail = FALSE)
print(pValue)

