Pcb <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH06/ex6-11.TXT", 
                row.names=1, quote="'")
qqnorm(Pcb$X1982, main = "Normal Q-Q Plot: 1982")
qqline(Pcb$X1982)
qqnorm(Pcb$X1996, main = "Normal Q-Q Plot: 1996")
qqline(Pcb$X1996)
boxplot(Pcb)

pcb.82.mean <- mean(Pcb$X1982)
pcb.82.var <- var(Pcb$X1982)
pcb.82.sd <- sd(Pcb$X1982)
pcb.96.mean <- mean(Pcb$X1996)
pcb.96.var <- var(Pcb$X1996)
pcb.96.sd <- sd(Pcb$X1996)

print('pcb.82 mean')
print(pcb.82.mean)
print("pcb.82 variance")
print(pcb.82.var)
print("pcb.82 sd")
print(pcb.82.sd)
print('pcb.96.mean')
print(pcb.96.mean)
print('pcb.96 var')
print(pcb.96.var)
print('pcb.96 sd')
print(pcb.96.sd)

tStat <- ((54.33-15.52)-0)/sqrt((15.65)^2/13+(5.96)^2/13)
print("tStat")
print(tStat)

c <- (pcb.82.var/13)/(pcb.82.var/13 + pcb.96.var/13)
print("c")
print(c)

degreef <- ceiling(((13-1)*(13-1))/((1-c)^2*(13-1)+c^2*(13-1)))
print("degreef")
print(degreef)

critValue <- qt(0.05, df = degreef, lower.tail = FALSE)
print("critValue")
print(critValue)

print(t.test(Pcb$X1982, Pcb$X1996, paired = FALSE, 
             conf.level = .95, var.equal = FALSE, alternative = "greater"))
print("p-value")
print(1-pt(tStat, df = degreef))

