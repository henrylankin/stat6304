standardTherapy <- c(4, 15, 24, 10, 1, 27, 31, 14, 2, 16, 
                     32, 7, 13, 36, 29, 6, 12, 18, 14, 15, 
                     18, 6, 13, 21, 20, 8, 3, 24)
therapyBreaks <- seq(0, 40, 5)
relativeFreqStandTherapy <- histogram(standardTherapy, breaks = therapyBreaks,
                                      main = "Figure 3.7a.1: Survival Times 
                                      for Standard Therapy",
                                      freq = T, xlab = "Months", ylab = "Density", col = "white")
print(relativeFreqStandTherapy)