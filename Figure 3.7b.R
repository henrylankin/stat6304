standardTherapy <- c(4, 15, 24, 10, 1, 27, 31, 14, 2, 16, 
                     32, 7, 13, 36, 29, 6, 12, 18, 14, 15, 
                     18, 6, 13, 21, 20, 8, 3, 24)
newTherapy <- c(5, 20, 29, 15, 7, 32, 36, 17, 15, 19, 35, 
                10 ,16, 39, 27, 14, 10, 16, 12, 13, 16, 9, 
                18, 33, 30 ,29, 31, 27)
therapyBoxPlot <- boxplot(standardTherapy, newTherapy, 
                          names = c("Standard Therapy", "New Therapy"),
                          main = "Figure 3.7b")
print(therapyBoxPlot)