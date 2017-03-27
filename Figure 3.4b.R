fluorideLevels <- c(.75, .86, .84, .85, .97, .94, .89, .84, .83, .89, .88, .78, .77, 
                    .76, .82, .72, .92, 1.05, .94, .83, .81, .85, .97, .93, .79)
fluorideWidthBreaks <- seq(0.705, 1.06, 0.05)
freqHistFluorideLevels <- hist(fluorideLevels, breaks = fluorideWidthBreaks, plot = F)
plot(freqHistFluorideLevels, main = "Figure 3.4b: Fluoride Levels Frequency", freq = T, 
     xlab = "Fluoride Levels")