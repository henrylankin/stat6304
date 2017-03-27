busReliability <- read.csv("~/Desktop/Graduate School /6304/Data Sets/ASCII-comma/CH03/ex3-19.TXT", sep=";")
bus.Breaks <- c(seq(0, 60.0, 20.0), seq(100.0, 160.0, 20.0), 200.0)
bus.RelativeHist <- list(breaks = bus.Breaks, counts = busReliability$X.Frequency., 
                         density = busReliability$X.Frequency./sum(busReliability$X.Frequency.), 
                         xname = "busReliability")
bus.FreqList <- bus.RelativeHist
class(bus.RelativeHist) <- "histogram"
plot(bus.RelativeHist, main = "Figure 3.19b: Bus Reliability", xlab = "distance traveled (1,000 miles)", 
     ylab = "relative frequency", ylim = c(0, .35))
#print.table(bus.FreqList)