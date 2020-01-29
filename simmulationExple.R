set.seed(123)

C1 <- runif(1000, 0, 1) < 0.5
table(C1)

C2 <- runif(1000, 0, 1) < 0.2
table(C2)

treat <- runif(1000, 0, 1) < gtools::inv.logit(-1 + C1 + C2 - 0.2*C1*C2)
Y <- runif(1000, 0, 1) < gtools::inv.logit(-2 + X + 0.5*C1 - 0.7*C1*C2 - 0.5*X*C2)
table(X)
table(Y)

C1C2 <- C1*C2

library(ATE)

fit <- ATE(Y = Y, treat, X = cbind(C1, C2))
summary(fit)
