fluorideLevels <- c(.75, .86, .84, .85, .97, .94, .89, .84, .83, .89, .88, .78, .77, 
                    .76, .82, .72, .92, 1.05, .94, .83, .81, .85, .97, .93, .79)
fluorideWidthBreaks <- seq(0.705, 1.06, 0.05)
#library(lattice)
relativeFreqHistFluorideLevels <- histogram(fluorideLevels, breaks = fluorideWidthBreaks, 
     main = "Figure 3.4c: Fluoride Levels Frequency", 
     freq = T, xlab = "Fluoride Levels", col = "white", ylab = "Density")
print(relativeFreqHistFluorideLevels)