writeLines("Question 11.45\n")

#import data
DoseData <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH11/ex11-45.TXT", quote="'")
x <- DoseData$Dose
y <- DoseData$Response

#scatterplot
plot(x, y, main = 'Figure 11.45: Dose vs. Response', xlab = 'Dose', ylab = 'Response')

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

#predicted y-values
y.predicted <- beta.1.calculated*x + beta.0.calculated
residuals.calculated <- y - y.predicted

#residuals plot
plot(y.predicted, residuals.calculated, main = "Figure 11.45b: Predicted values vs. Residuals", 
     xlab = "predicted values", ylab = "residuals")
abline(h=0)

