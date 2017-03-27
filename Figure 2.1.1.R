x <- c(2,3,4)
y <- x/9
plot(x, y, main = "Figure 2.1.1: PMF", type = "p", xlim = c(0,4), ylim = c(0,0.5))
line.input <- c(0:4)
line.output <- line.input/9
lines(line.input, line.output)
