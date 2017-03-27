moneySupply <- read.csv("~/Desktop/Graduate School /6304/Data Sets/ASCII-comma/CH03/ex3-41.TXT", 
                        quote="'")
boxplot(moneySupply[2:3], 
        main = "Figure 3.42: Money Supply over 20 Months", ylab = "money supply (in trillions)")