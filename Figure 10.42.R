#import data
AgePromotion <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH10/ex10-42.TXT", quote="'")

#organize
y <- split(AgePromotion, AgePromotion$Age)
observedCount <- c(y$Under30$Frequency, y$`30-39`$Frequency, 
                   y$`40-49`$Frequency, y$`50&Over`$Frequency)
age <- unique(AgePromotion$Age)
promo <- unique(AgePromotion$Promotion)
promoMatrix <- matrix(observedCount, nrow = length(promo), ncol = length(age))

#goodness of fit
result <- chisq.test(promoMatrix)
print(result)

#expected counts
expectedCounts <- result$expected
print(expectedCounts)