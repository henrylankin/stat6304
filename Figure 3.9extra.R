defenseYears <- c(1980:2004)
defenseExpenditures <- c(134, 158, 185, 210, 227, 253, 273, 
                         282, 290, 304, 299, 273, 298, 291, 
                         282, 272, 266, 271, 269, 275, 295, 
                         306, 349, 376, 391)
defenseGNP <- c(4.9, 5.2, 5.8, 6.1, 6.0, 6.1, 6.2, 6.1, 5.9, 
                5.7, 5.2, 4.6, 4.8, 4.4, 4.1, 3.7, 3.5, 3.3, 
                3.1, 3.0, 3.0, 3.0, 3.4, 3.5, 3.5)
defenseFrame <- data.frame(expenditures = defenseExpenditures, gnp = defenseGNP)
row.names(defenseFrame) <- defenseYears
par(mar = c(5, 5, 2, 5))
plot(row.names(defenseFrame), defenseFrame$expenditures, 
     type = "l", col = "red", xlab = "Years", ylab = "Expenditures",
     main = "Expenditures and GNP Time-Series")
par(new = T)
plot(row.names(defenseFrame), defenseFrame$gnp, type = "l", col = "blue", 
     axes = F, xlab = NA, ylab = NA)
axis(side = 4)
mtext(side = 4, line = 3, "GNP")




