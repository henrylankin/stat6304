repairs <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH06/ex6-17.TXT", quote="'")
qqnorm(repairs$Treatment, main = "Normal Q-Q Plot: Treatment")
qqline(repairs$Treatment)
qqnorm(repairs$Control, main = "Normal Q-Q Plot: Control")
qqline(repairs$Control)

treatment.mean <- mean(repairs$Treatment)
treatment.var <- var(repairs$Treatment)
treatment.sd <- sd(repairs$Treatment)
print("treatment.mean")
print(treatment.mean)
print("treatment.var")
print(treatment.var)
print("treatment.sd")
print(treatment.sd)

control.mean <- mean(repairs$Control)
control.var <- var(repairs$Control)
control.sd <- sd(repairs$Control)
print("control.mean")
print(control.mean)
print("control.var")
print(control.var)
print('control.sd')
print(control.sd)

tStat <- ((treatment.mean-control.mean)-0)/sqrt(treatment.var/18+control.var/18)
print("tStat")
print(tStat)

c <- (treatment.var/18)/(treatment.var/18 + control.var/18)
print("c")
print(c)

degreef <- ((18-1)*(18-1))/((1-c)*(18-1)+c*(18-1))
print("degreef")
print(degreef)

print(t.test(repairs$Treatment, repairs$Control, paired = FALSE, 
             conf.level = .95, var.equal = FALSE, alternative = "two.sided"))
print("p-value")
print(2*pt(tStat, df = degreef))

mError <- -qt(0.05/2, df = degreef)*sqrt(treatment.var/18+control.var/18)
print('mError')
print(mError)
print("lower")
print((treatment.mean-control.mean)-mError)
print("upper")
print((treatment.mean-control.mean)+mError)
