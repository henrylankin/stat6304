library(ggplot2)
#import data
Jurors <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH10/ex10-33.TXT", quote="'")
countyDist <- c(.421, .229, .157, .193)

#organize
observedCount <- Jurors$Number
totalCount <- sum(observedCount)
age <- rep(Jurors$Age, 2)
expectedCounts <- totalCount*countyDist
jurorCounts <- c(observedCount, expectedCounts)
dataType <- c(rep('observed', 4), rep('expected', 4))
newFrame <- data.frame(dataType, age, jurorCounts)

#barplot
bPlot <- ggplot(newFrame, aes(age, jurorCounts, 
              fill = dataType)) + geom_bar(stat = "identity", position = 'dodge') + 
              scale_fill_discrete(name = "data type", labels = c('expected', 'observed')) +
              xlab("age") + ylab("frequency")
plot(bPlot)

#test hypothesize
print(chisq.test(Jurors$Number, p = countyDist))