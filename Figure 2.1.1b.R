x <- c(2,3,4)
y <- x/9
XY.freqList <- list(breaks = x, counts = y, 
                                    density = y/sum(y), 
                                    xname = "Figure 2.1.1b: XY Frequency Hist")
XY.relativeFreqHist <- XY.freqList
class(XY.relativeFreqHist) <- "histogram"
plot(XY.relativeFreqHist)
