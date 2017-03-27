#import data
ex11.4 <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH11/ex11-4.TXT", quote = "'")
#View(ex11.4)

#scatterplot
plot(ex11.4$x, ex11.4$y, xlab = 'x', ylab = 'y', main = 'Figure 11.4: x vs. y')

#regression line
regression.line <- lm(ex11.4$y~ex11.4$x)
abline(regression.line)
regLine.summary <- summary(regression.line)
print(regLine.summary)

#print regression line
beta.0 <- regression.line$coefficients[1]
beta.1 <- regression.line$coefficients[2]
print(sprintf("Simple Regression Line (SRL): y = %f*(x) + %f", beta.1, beta.0))
print(sprintf("beta-0 = %f", beta.0))
print(sprintf("beta-1 = %f", beta.1))

#predict y value at x = xValue
xValue <- 12
yValue <- beta.1*xValue + beta.0
print(sprintf("y predicted = %f", yValue))