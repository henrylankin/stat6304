newTherapy <- c(5, 20, 29, 15, 7, 32, 36, 17, 15, 19, 35, 
                10 ,16, 39, 27, 14, 10, 16, 12, 13, 16, 9, 
                18, 33, 30 ,29, 31, 27)
therapyBreaks <- seq(0, 40, 5)
relativeFreqNewTherapy <- histogram(newTherapy, breaks = therapyBreaks,
                                      main = "Figure 3.7a.2: Survival Times 
                                      for New Therapy",
                                      freq = T, xlab = "Months", ylab = "Density", col = "white")
print(relativeFreqNewTherapy)