#not necessary below this line
##transform the data
#variance to mean ratios
vtomRatio.1 <- expVar.m1/mean(exp.m1)
vtomRatio.2 <- expVar.m2/mean(exp.m2)
vtomRatio.3 <- expVar.m3/mean(exp.m3)
vtomRatio.4 <- expVar.m4/mean(exp.m4)
vtomRatio.5 <- expVar.m5/mean(exp.m5)

print('variance to mean ratios')
print(vtomRatio.1)
print(vtomRatio.2)
print(vtomRatio.3)
print(vtomRatio.4)
print(vtomRatio.5)

#variance to squared ratios
vtom2Ratio.1 <- expVar.m1/mean(exp.m1)^2
vtom2Ratio.2 <- expVar.m2/mean(exp.m2)^2
vtom2Ratio.3 <- expVar.m3/mean(exp.m3)^2
vtom2Ratio.4 <- expVar.m4/mean(exp.m4)^2
vtom2Ratio.5 <- expVar.m5/mean(exp.m5)^2

print('variance to mean squared ratios')
print(vtom2Ratio.1)
print(vtom2Ratio.2)
print(vtom2Ratio.3)
print(vtom2Ratio.4)
print(vtom2Ratio.5)

#not necessary
#log(y) transform
logVar.1 <- var(log(exp.m1))
logVar.2 <- var(log(exp.m2))
logVar.3 <- var(log(exp.m3))
logVar.4 <- var(log(exp.m4))
logVar.5 <- var(log(exp.m5))
logVar.vector <- c(logVar.1, logVar.2, logVar.3, logVar.4, logVar.5)

print('log variances')
print(logVar.1)
print(logVar.2)
print(logVar.3)
print(logVar.4)
print(logVar.5)

print(levene.test(log(expenditures), numberMembers))

#not necessary
#sqrt(y+0.375) transform
sqrootVar.1 <- var(sqrt(exp.m1 + 0.375))
sqrootVar.2 <- var(sqrt(exp.m2 + 0.375))
sqrootVar.3 <- var(sqrt(exp.m3 + 0.375))
sqrootVar.4 <- var(sqrt(exp.m4 + 0.375))
sqrootVar.5 <- var(sqrt(exp.m5 + 0.375))
##data
Expenditures.Data <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH03/ex3-55.TXT", quote="'")

#organize data and split by number of members
numberMembers <- Expenditures.Data$NumberMembers
expenditures <- Expenditures.Data$Expenditures
expen.Split <- split(Expenditures.Data, Expenditures.Data$NumberMembers)
exp.m1 <- expen.Split$`1`$Expenditures
exp.m2 <- expen.Split$`2`$Expenditures
exp.m3 <- expen.Split$`3`$Expenditures
exp.m4 <- expen.Split$`4`$Expenditures
exp.m5 <- expen.Split$`5`$Expenditures

##check conditions

#boxplot
boxplot(Expenditures.Data$Expenditures~Expenditures.Data$NumberMembers)

#qqplot
qqnorm(exp.m1, main = 'qq-norm: 1 member')
qqline(exp.m1)
qqnorm(exp.m2, main = 'qq-norm: 2 members')
qqline(exp.m2)
qqnorm(exp.m3, main = 'qq-norm: 3 members')
qqline(exp.m3)
qqnorm(exp.m4, main = 'qq-norm: 4 members')
qqline(exp.m4)
qqnorm(exp.m5, main = 'qq-norm: 5+ members')
qqline(exp.m5)

#residuals
mean.1 <- mean(exp.m1)
mean.2 <- mean(exp.m2)
mean.3 <- mean(exp.m3)
mean.4 <- mean(exp.m4)
mean.5 <- mean(exp.m5)

#find variances
expVar.m1 <- var(exp.m1)
expVar.m2 <- var(exp.m2)
expVar.m3 <- var(exp.m3)
expVar.m4 <- var(exp.m4)
expVar.m5 <- var(exp.m5)

print('var 1')
print(expVar.m1)
print('var 2')
print(expVar.m2)
print('var 3')
print(expVar.m3)
print('var 4')
print(expVar.m4)
print('var 5')
print(expVar.m5)

#BFL test
print(levene.test(expenditures, numberMembers))

#TukeyHSD test for multiple comparisons of means

print('sqrt variances')
print(sqrootVar.1)
print(sqrootVar.2)
print(sqrootVar.3)
print(sqrootVar.4)
print(sqrootVar.5)

print(levene.test(sqrt(expenditures + 0.375), numberMembers))

#not necessary
##ANOVA test on log transform of data
aovResult <- aov(log(expenditures)~numberMembers)
print(aovResult)
print(summary(aovResult))
