sampleSize <- 91
CP.sampleSize <- sampleSize
CM.sampleSize <- sampleSize

#computer
CP.mean <- 484.45
CP.sd <- 53.77
#conventional
CM.mean <- 487.38
CM.sd <- 36.94

alpha <- 0.05

##CP.mu-CM.mu test

mu.pointEstimate <- CP.mean - CM.mean
print("point estimate")
print(mu.pointEstimate)

#test statistic
tStat <- (mu.pointEstimate - 0)/sqrt(CP.sd^2/CP.sampleSize + CM.sd^2/CM.sampleSize)
print("tStat")
print(tStat)

#rejection region
cValue <- (CP.sd^2/CP.sampleSize)/(CP.sd^2/CP.sampleSize + CM.sd^2/CM.sampleSize)
print("cValue")
print(cValue)
degreef.mu <- ceiling(((CP.sampleSize-1)*(CM.sampleSize-1))/
  ((1-cValue)^2*(CP.sampleSize-1)+(cValue)^2*(CM.sampleSize-1)))
print("degrees of freedom mean")
print(degreef.mu)
critValue.mu <- qt(alpha/2, df = degreef.mu, lower.tail = FALSE)
print("critValue mean")
print(critValue.mu)

#conclusion
pValue.mu <- pt(tStat, df = degreef.mu)
print("p-value")
print(pValue.mu)

##confidene interval for mean
mError <- critValue*sqrt(CP.sd^2/CP.sampleSize + CM.sd^2/CM.sampleSize)
print("margin of error")
print(mError)
lower.mu <- mu.pointEstimate-mError
print("lower.mu")
print(lower.mu)
upper.mu <- mu.pointEstimate+mError
print("upper.mu")
print(upper.mu)

##variance test

#test stastic
FStat <- CP.sd^2/CM.sd^2
print("FStat")
print(FStat)

#rejection region
critValue.F.high <- qf(alpha/2, df1 = CP.sampleSize-1, df2 = CM.sampleSize-1, lower.tail = FALSE)
print("critValue.F.high")
print(critValue.F.high)
critValue.F.low <- qf(alpha/2, df1 = CP.sampleSize-1, df2 = CM.sampleSize-1, lower.tail = TRUE)
print("critValue.F.low")
print(critValue.F.low)

#conclusion
pValue.F <- pf(FStat, df1 = CP.sampleSize-1, df2 = CM.sampleSize-1)
print("pValue.F")
print(pValue.F)

##confidence interval for F
print("lower.F")
print(FStat*critValue.F.low)
print("upper.F")
print(FStat*critValue.F.high)

