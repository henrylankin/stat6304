#import data
AgePromotion.collapsed <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH10/ex10-43.TXT", quote="'")

#organize
y <- split(AgePromotion.collapsed, AgePromotion.collapsed$Age)
observedCount <- c(y$Upto39$Frequency, y$`40&Over`$Frequency)
age <- unique(AgePromotion.collapsed$Age)
promo <- unique(AgePromotion.collapsed$Promotion)
promoMatrix <- matrix(observedCount, nrow = length(promo), ncol = length(age))

#goodness of fit
result <- chisq.test(promoMatrix, correct = FALSE)
print(result)

#expected counts
expectedCounts <- result$expected
print(expectedCounts)