treeCounts <- read.csv("/Users/henrylankin/Desktop/School/6304/Data Sets/ASCII-comma/CH03/ex3-30.TXT"
                       , sep="")
treeCounts.Hist <- hist(treeCounts$X.Number., breaks = nclass.Sturges(treeCounts$X.Number.), plot = F)
treeCounts.relativeHist <- treeCounts.Hist
treeCounts.relativeHist$counts <- treeCounts.relativeHist$counts/sum(treeCounts.relativeHist$counts)
plot(treeCounts.relativeHist, main = "Figure 3.30: Number of Trees with Diameter over 12 inches",
     ylab = "relative frequency", xlab = "number of trees", xlim = c(0,14), ylim = c(0, 0.30))

treeCounts.mean <- mean(treeCounts$X.Number.)
print(treeCounts.mean)

treeCounts.sd <- sd(treeCounts$X.Number.)
print(treeCounts.sd)

interval.1 <- c(treeCounts.mean - 1*treeCounts.sd, treeCounts.mean + 1*treeCounts.sd)
interval.2 <- c(treeCounts.mean - 2*treeCounts.sd, treeCounts.mean + 2*treeCounts.sd)
interval.3 <- c(treeCounts.mean - 3*treeCounts.sd, treeCounts.mean + 3*treeCounts.sd)
print(interval.1)
print(interval.2)
print(interval.3)

proportion.1 <- length(treeCounts$X.Number.[treeCounts$X.Number.>interval.1[1] & treeCounts$X.Number.<interval.1[2]])/length(treeCounts$X.Number.)
proportion.2 <- length(treeCounts$X.Number.[treeCounts$X.Number.>interval.2[1] & treeCounts$X.Number.<interval.2[2]])/length(treeCounts$X.Number.)
proportion.3 <- length(treeCounts$X.Number.[treeCounts$X.Number.>interval.3[1] & treeCounts$X.Number.<interval.3[2]])/length(treeCounts$X.Number.)
print(proportion.1)
print(proportion.2)
print(proportion.3)






