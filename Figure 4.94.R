dataValues <- c(0.47,0.58,0.67,0.70,0.77,0.79,0.81,0.82,0.84,0.86,0.91,0.95,0.98,1.01,1.04)
dataValues.qqnorm <- qqnorm(dataValues, 
                            main = "Concrete Data Normal Q-Q Plot",
                            xlab = "theoretical quantiles",
                            ylab = "sample concrete quantiles")
qqline(dataValues)
dataValues.correlation <- cor(dataValues.qqnorm$x, dataValues.qqnorm$y)
print(dataValues.correlation)
mean.theoritical <- dataValues.qqnorm$y[dataValues.qqnorm$x == 0]
dataValues.Ttest <- t.test(dataValues, mu = mean.theoritical)
print(dataValues.Ttest$p.value)