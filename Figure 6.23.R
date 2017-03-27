yData <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH06/ex6-23.TXT", quote="'")
diffY <- yData$Y1 - yData$Y2

diffY.mean <- mean(diffY)
diffY.var <- var(diffY)
diffY.sd <- sqrt(var(diffY))

print("mean")
print(diffY.mean)
print("variance")
print(diffY.var)
print("sd")
print(diffY.sd)

tStat <- (diffY.mean-0)/(diffY.sd/sqrt(length(diffY)))
print("tStat")
print(tStat)

mError <- -qt(0.05/2, df = 5)*diffY.sd/sqrt(5)
print("mError")
print(mError)
                         
