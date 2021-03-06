homeStates <- c(state.name, "Dist. of Columbia")
homeStates <- sort(homeStates)
homeOwnRates.1985 <- c(70.4, 61.2, 64.7, 66.6, 54.2, 63.6, 
                       69.0, 70.3, 37.4, 67.2, 62.7, 51.0, 
                       71.0, 60.6, 67.6, 69.9, 68.3, 68.5, 
                       70.2, 73.7, 65.6, 60.5, 70.7, 70.0, 
                       69.6, 69.2, 66.5, 68.5, 57.0, 65.5, 
                       62.3, 68.2, 50.3, 68.0, 69.9, 67.9, 
                       70.5, 61.5, 71.6, 61.4, 72.0, 67.6, 
                       67.6, 60.5, 71.5, 69.5, 68.5, 66.8, 
                       75.9, 63.8, 73.2)
homeOwnRates.1996 <- c(71.0, 62.9, 62.0, 66.6, 55.0, 64.5, 
                       69.0, 71.5, 40.4, 67.1, 69.3, 50.6, 
                       71.4, 68.2, 74.2, 72.8, 67.5, 73.2, 
                       64.9, 76.5, 66.9, 61.7, 73.3, 75.4, 
                       73.0, 70.2, 68.6, 66.8, 61.1, 65.0, 
                       64.6, 67.1, 52.7, 70.4, 68.2, 69.2, 
                       68.4, 63.1, 71.7, 56.6, 72.9, 67.8, 
                       68.8, 61.8, 72.7, 70.3, 68.5, 63.1, 
                       74.3, 68.2, 68.0)
homeOwnRates.2002 <- c(73.5, 67.3, 65.9, 70.2, 58.0, 69.1, 
                       71.6, 75.6, 44.1, 68.7, 71.7, 57.4, 
                       73.0, 70.2, 75.0, 73.9, 70.2, 73.5, 
                       67.1, 73.9, 72.0, 62.7, 76.0, 77.3, 
                       74.8, 74.6, 69.3, 68.4, 65.5, 69.5, 
                       67.2, 70.3, 55.0, 70.0, 69.5, 72.0, 
                       69.4, 66.2, 74.0, 59.6, 77.3, 71.5, 
                       70.1, 63.8, 72.7, 70.2, 74.3, 67.0, 
                       77.0, 72.0, 72.8)
homeFrame <- data.frame(Year.1985 = homeOwnRates.1985, Year.1996 = homeOwnRates.1996, 
                        Year.2002 = homeOwnRates.2002, row.names = homeStates)
frequencyHistHome.1996 <- hist(homeFrame$Year.1996, plot = F)
relativeFreqHistHome.1996 <- frequencyHistHome.1996
relativeFreqHistHome.1996$counts <- relativeFreqHistHome.1996$counts/sum(relativeFreqHistHome.1996$counts)
plot(relativeFreqHistHome.1996, main = "Figure 3.11a.2: Homeowner Rates in 1996",
     xlab = "Homowner Rates", ylab = "Density", ylim = c(0, 0.5))