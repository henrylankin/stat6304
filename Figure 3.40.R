lensDev <- read.csv("~/Desktop/Graduate School /6304/Data Sets/ASCII-comma/CH03/ex3-40.TXT", 
                    quote="'")

lensDev.supply1 <- lensDev$Deviations[lensDev$Suppliers == 1]
lensDev.supply2 <- lensDev$Deviations[lensDev$Suppliers == 2]
lensDev.supply3 <- lensDev$Deviations[lensDev$Suppliers == 3]

lens.supply1.mean <- mean(lensDev.supply1)
lens.supply1.sd <- sd(lensDev.supply1)
print(lens.supply1.mean)
print(lens.supply1.sd)

lens.supply2.mean <- mean(lensDev.supply2)
lens.supply2.sd <- sd(lensDev.supply2)
print(lens.supply2.mean)
print(lens.supply2.sd)

lens.supply3.mean <- mean(lensDev.supply3)
lens.supply3.sd <- sd(lensDev.supply3)
print(lens.supply3.mean)
print(lens.supply3.sd)

lensDevFrame <- data.frame(supply.1 = lensDev.supply1, 
                           supply.2 = lensDev.supply2, supply.3 = lensDev.supply3)
names(lensDevFrame) <- c("supplier 1", "supplier 2", "supplier 3")
boxplot(lensDevFrame, main = "Figure 3.40: Lens Power Deviation by Supplier", ylab = "deviation")


