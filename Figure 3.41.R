moneySupply <- read.csv("~/Desktop/Graduate School /6304/Data Sets/ASCII-comma/CH03/ex3-41.TXT", 
                        quote="'")
scatterplot(moneySupply$M2, moneySupply$M3, boxplots = F, span = F, smooth = F,
            main = "Figure 3.41: Money Supply over 20 Months", 
            xlab = "M2 supply (in trillions)", ylab = "M3 supply (in trillions)")
