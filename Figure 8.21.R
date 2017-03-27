##data
Expenditures.Data <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH03/ex3-55.TXT", quote="'")

#organize data and split by number of members
numberMembers <- factor(Expenditures.Data$NumberMembers)
expenditures <- log(Expenditures.Data$Expenditures)
expen.Split <- split(Expenditures.Data, Expenditures.Data$NumberMembers)
exp.m1 <- log(expen.Split$`1`$Expenditures)
exp.m2 <- log(expen.Split$`2`$Expenditures)
exp.m3 <- log(expen.Split$`3`$Expenditures)
exp.m4 <- log(expen.Split$`4`$Expenditures)
exp.m5 <- log(expen.Split$`5`$Expenditures)

##check conditions

#boxplot
boxplot(expenditures~numberMembers)

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

##residuals
mean.1 <- mean(exp.m1)
mean.2 <- mean(exp.m2)
mean.3 <- mean(exp.m3)
mean.4 <- mean(exp.m4)
mean.5 <- mean(exp.m5)

#errors
errors.1 <- exp.m1 - mean.1
errors.2 <- exp.m2 - mean.2
errors.3 <-exp.m3 - mean.3
errors <- c(errors.1, errors.2, errors.3)

#normality check with residuals
boxplot(errors)
qqnorm(errors, main = "Normal Q-Q Plot Residuals")
print(shapiro.test(errors))
qqline(errors)


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

#BLF test
print(leveneTest(expenditures, numberMembers))

#aov test
expenResult <- aov(expenditures~numberMembers)
print(summary(expenResult))

#TukeyHSD test for multiple comparisons of means


