#import data
phdevice <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH08/ex8-6.TXT", quote="'")

#organize data
response <- phdevice$Response
device <- factor(phdevice$Devise)
print("response")
print(response)
print("device")
print(device)


#boxplot
boxplot(response~device)

#aov
alpha <- 0.05
ph.result <- aov(response~device)
print("aov summary")
print(summary(ph.result))

#split data
phsplit <- split(phdevice, phdevice$Devise)

#sample size, means, sd
levelCount <- length(levels(device))
sampleT <- length(response)
sampleSize <- sampleT/levelCount

response.means <- c(mean(phsplit$A$Response), mean(phsplit$B$Response), 
                    mean(phsplit$C$Response), mean(phsplit$D$Response))
print("response means")
print(response.means)
response.sds <- c(sd(phsplit$A$Response), sd(phsplit$B$Response), 
                  sd(phsplit$C$Response), sd(phsplit$D$Response))
print("response sds")
print(response.sds)

#test stat calculations
overallMean <- sum(sampleSize*response.means)/sampleT
print("overall mean")
print(overallMean)

SSB <- sum(sampleSize*(response.means - overallMean)^2)
print("SSB")
print(SSB)

SSW <- sum((sampleSize-1)*response.sds^2)
print("SSW")
print(SSW)

TSS <- SSB + SSW
print("TSS")
print(TSS)

variance.between <- SSB/(levelCount-1)
print("variance.between")
print(variance.between)
variance.within <- SSW/(sampleT-levelCount)
print("variance.within")
print(variance.within)

testStat <- variance.between/variance.within
print("testStat")
print(testStat)

#rejection region
critValue <- qf(alpha, df1 = levelCount-1, df2 = sampleT-levelCount, lower.tail = FALSE)
print("critical value")
print(critValue)

#p-value
pValue <- pf(testStat, df1 = levelCount-1, df2 = sampleT-levelCount, lower.tail = FALSE)
print("p-value")
print(pValue)