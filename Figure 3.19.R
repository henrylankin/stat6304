busReliability <- read.csv("~/Desktop/Graduate School /6304/Data Sets/ASCII-comma/CH03/ex3-19.TXT",
                           sep=";")
print(busReliability)
bus.Breaks <- c(seq(0, 60.0, 20.0), seq(100.0, 160.0, 20.0), 200.0)
bus.FreqList <- list(breaks = bus.Breaks, counts = busReliability$X.Frequency., 
                         density = busReliability$X.Frequency./sum(busReliability$X.Frequency.), 
                         xname = "busReliability")
bus.RelativeHist <- bus.FreqList
class(bus.RelativeHist) <- "histogram"
plot(bus.RelativeHist, main = "Figure 3.19: Bus Reliability", xlab = "distance traveled (1,000 miles)", 
     ylab = "relative frequency", ylim = c(0, .35))

loop.count <- length(bus.Breaks) - 1
sumVariable <- sum(busReliability$X.Frequency.)
busReliability.sum <- 0
for (i in 1:loop.count) {
  busReliability.sum <- busReliability.sum + 
    ((bus.Breaks[i + 1] + bus.Breaks[i])/2)*busReliability$X.Frequency.[i]
}
busReliability.mean <- busReliability.sum/sumVariable
print(busReliability.mean)


sumVariable.2 <- 0
for(i in 1:loop.count){
  sumVariable.2 <- sumVariable.2 +
    (bus.Breaks[i + 1] - bus.Breaks[i]-0.1)*busReliability$X.Frequency.[i]
}
sumVariable.2 <- sumVariable.2 + 0.1*busReliability$X.Frequency.[1]
sumVariable.3 <- 0
for(i in 1:3){
  sumVariable.3 <- sumVariable.3 +
    (bus.Breaks[i + 1] - bus.Breaks[i] - 0.1)*busReliability$X.Frequency.[i]
}
sumVariable.3 <- sumVariable.3 + 0.1*busReliability$X.Frequency.[1]
busReliability.median <- ((0.5*sumVariable.2 - sumVariable.3) /
                            busReliability$X.Frequency.[4]) + bus.Breaks[4] + 0.1
print(busReliability.median)
