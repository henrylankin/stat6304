#import data and organize
ex11.6 <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH11/ex11-6.TXT", quote="'")
x <- ex11.6$x
y <- ex11.6$y

#scatterplot
plot(x, y, main = 'Figure 11.6: x vs. y', xlab = 'x', ylab = 'y')

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
xValue <- 57
y.predicted <- beta.1*xValue + beta.0
print(sprintf("y predicted = %f", y.predicted))

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

