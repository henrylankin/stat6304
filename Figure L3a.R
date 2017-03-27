fourSize <- tb3dot1$N[tb3dot1$Grade == "Fourth"] #to isolate the fourth grade school size data
fourSizeBreaks <- seq(20, 180, 20)  #Bins of 20 width from 20 to 180. I chose this width to show 
                                    #the spread of data and pareticualrly to show how many are 
                                    #bunched in the 30-70 range 
fourSizeFreqHist <- hist(fourSize, breaks = fourSizeBreaks, 
                         xlim = c(0,200), ylim = c(0,8), xlab = "School Size",
                         main = "Figure L3a: Fourth Grade School Size")
                  #graphing the frequncy histogram with desired bin sizes and x/y-axis limits
print(fourSizeFreqHist) #print the frequency histogram




