cevents <- read.csv("~/Desktop/School/6304/Data Sets/ASCII-comma/CH06/ex6-8.TXT", quote="'")
qqnorm(cevents$NoNews, main = "Normal Q-Q Plot: No News")
qqline(cevents$NoNews)
qqnorm(cevents$Subscribe, main = "Normal Q-Q Plot: Subscribe")
qqline(cevents$Subscribe)

var.NoNews <- var(cevents$NoNews, na.rm = TRUE)
var.Subscribe <- var(cevents$Subscribe, na.rm = TRUE)
mean.NoNews <- mean(cevents$NoNews, na.rm = TRUE)
mean.Subscribe <- mean(cevents$Subscribe, na.rm = TRUE)

c <- ((var.NoNews)/30)/((var.NoNews)/30 + (var.Subscribe)/25)
degreef <- ((30-1)*(25-1))/((1-c)*(30-1)+c*(25-1))


print("No News Mean:")
print(mean.NoNews)
print("No News SD:")
print(sqrt(var.NoNews))
print("Subscribe Mean:")
print(mean.Subscribe)
print("Subscribe SD")
print(sqrt(var.Subscribe))

print(c)
print(degreef)

print(t.test(cevents$NoNews, cevents$Subscribe, df = degreef, alternative = "less",
       var.equal = FALSE, conf.level = 0.95, paired = FALSE))
