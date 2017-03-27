#import data
StateIPM <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH10/ex10-44.TXT", quote="'")

#organize
state.split <- split(StateIPM, StateIPM$State)

#calculate counts and proportions
provided.total <- sum(sum(state.split$Cal$Frequency), sum(state.split$Mich$Frequency), 
                     sum(state.split$Wash$Frequency))
provided.adopted <- sum(state.split$Cal$Frequency[1], state.split$Mich$Frequency[1], 
                        state.split$Wash$Frequency[1])
proportion.provided <- provided.adopted/provided.total

notprovided.total <- sum(sum(state.split$NewYork$Frequency), sum(state.split$Oregon$Frequency), 
                         sum(state.split$Penn$Frequency))
notprovided.adopted <- sum(state.split$NewYork$Frequency[1], state.split$Oregon$Frequency[1],
                         state.split$Penn$Frequency[1])
proportion.notprovided <- notprovided.adopted/notprovided.total

#calculate test statistic
proportion.sd <- sqrt(proportion.provided*(1 - proportion.provided)/provided.total
                      + proportion.notprovided*(1 - proportion.notprovided)/notprovided.total)
testStat <- (proportion.provided - proportion.notprovided)/proportion.sd

#rejection region
critValue <- qnorm(0.05, lower.tail = FALSE)

#p-value
pValue <- pnorm(testStat, lower.tail = FALSE)

#conclusion
rejection <- "do not reject"
if (testStat > critValue){
  rejection <- "reject"
}
print(rejection)

#prop.test
result <- prop.test(c(provided.adopted, notprovided.adopted), 
                    n = c(provided.total, notprovided.total), alternative = "greater",
                    correct = TRUE)
print(result)


