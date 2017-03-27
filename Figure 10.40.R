#import data
SchoolRating <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH10/ex10-40.TXT", quote="'")

#organize
observedCount <- SchoolRating$Frequency
schools <- unique(SchoolRating$School)
ratings <- unique(SchoolRating$Rating)
ratingsMatrix <- matrix(observedCount, nrow = length(schools), ncol = length(ratings))

#test stat
#expectedCounts <-

#chisquared independence test
testResults <- chisq.test(ratingsMatrix)
print(testResults)
expectedCounts <- testResults$expected
print(expectedCounts)
#row percents matrix
rpercentsMatrix <- ratingsMatrix
rpercentsMatrix[1,] <- ratingsMatrix[1,]/sum(ratingsMatrix[1,])
rpercentsMatrix[2,] <- ratingsMatrix[2,]/sum(ratingsMatrix[2,])
rpercentsMatrix[3,] <- ratingsMatrix[3,]/sum(ratingsMatrix[3,])
rpercentsMatrix[4,] <- ratingsMatrix[4,]/sum(ratingsMatrix[4,])

#convert to table and set names
rpercentsTable <- as.table(rpercentsMatrix)
colnames(rpercentsTable) <- ratings
rownames(rpercentsTable) <- schools

#barplot of row percents
barplot((rpercentsTable), beside = TRUE, legend.text = schools, 
        main = 'School-Rating Row Percents', ylim = c(0, .6))

