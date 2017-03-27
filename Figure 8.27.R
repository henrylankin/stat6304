#import data
Lens <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH08/ex8-27.TXT", quote="'")

#organize data
response <- Lens$Response
supplier <- factor(Lens$Supplier)

