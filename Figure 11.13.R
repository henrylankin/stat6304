beta.0 <- 6.0300
beta.1 <- -0.0170
xValue <- c( rep(60, 4), rep(80,4), rep(100,4), rep(120,4), rep(140,4))
y.predicted <- beta.1*xValue + beta.0
print(sprintf("predicted y-values at x=%f = %f", unique(xValue), unique(y.predicted)))
residualValues.calculated <- y - y.predicted
print(sprintf("residual value at x=%f =  %f", xValue ,residualValues.calculated))
