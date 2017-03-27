SENS <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH06/ex6-28.TXT", quote="'")
diffSENS <- SENS$After -SENS$Before

diffSENS.mean <- mean(diffSENS)
print("mean")
print(diffSENS.mean)
diffSENS.var <- var(diffSENS)
print ("variance")
print(diffSENS.var)
diffSENS.sd <- sd(diffSENS)
print("sd")
print(diffSENS.sd)

tStat <- (diffSENS.mean - 0)/(diffSENS.sd/sqrt(10))
print("tStat")
print(tStat)

mError <- -qt(0.05/2, df = 9)*diffSENS.sd/sqrt(10)
print("mError")
print(mError)


