pollutionBS.mean <- 71
pollutionBS.sd <- 25
pollutionAS.mean <- 63
pollutionAS.sd <- 25
size <- 23

pollutionD.mean <- pollutionBS.mean - pollutionAS.mean
pollutionD.sd <- 8

print("difference mean")
print(pollutionD.mean)
print("difference sd")
print(pollutionD.sd)

testPower <- 0.90
beta <- 1- testPower
alpha <- 0.01

desiredSize <- ceiling(2*(pollutionD.sd^2)*
  (qnorm(alpha, lower.tail = FALSE)+qnorm(beta, lower.tail = FALSE))^2/
  pollutionD.sd^2)
print("desired size")
print(desiredSize)

CL <-0.95
alpha.CI <- 1-CL
widthUsed <- 10
Error <- widthUsed/2
desiredSize.CI <- ceiling(qnorm(alpha.CI/2, lower.tail = FALSE)^2*pollutionD.sd^2/Error^2)

print("desired size for 95% CI")
print(desiredSize.CI)

