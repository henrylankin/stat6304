factorLevels <- factor(cut(fluorideLevels, breaks = fluorideWidthBreaks))
fluorideLevelsOut <- as.data.frame(table(factorLevels))
fluorideLevelsOut <- transform(fluorideLevelsOut, cumFreq = cumsum(Freq), 
                               relative = prop.table(Freq))
print(fluorideLevelsOut)
largerFluorideLevelsProb <- length(fluorideLevels[fluorideLevels >= .90])/length(fluorideLevels)
print(sprintf("Probability of the fluoride level being 0.90 or larger is %s", 
              largerFluorideLevelsProb))