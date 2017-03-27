writeLines("Question 11.12\n")
#import data and organize
ex11.12 <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH11/ex11-12.TXT", quote="'")
x <- ex11.12$x
y <- ex11.12$y

#scatterplot
plot(x, y, main = 'Figure 11.12: x vs. y', xlab = 'x', ylab = 'y')

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

###Question 11.13
writeLines("Question 11.13\n")

xValue <- c( rep(60, 4), rep(80,4), rep(100,4), rep(120,4), rep(140,4))
y.predicted <- beta.1*xValue + beta.0
print(sprintf("predicted y-values at x=%f = %f", unique(xValue), unique(y.predicted)))
residualValues.calculated <- y - y.predicted
print(sprintf("residual value at x=%f =  %f", xValue ,residualValues.calculated))
