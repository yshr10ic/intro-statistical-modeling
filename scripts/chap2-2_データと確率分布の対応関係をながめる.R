# Load data
load("data/data.RData")

# Poison
y <- 0:9
prob <- dpois(y, lambda = 3.56)
cbind(y, prob)

# Plot
hist(data, xlim=c(-0.5, 9.5), ylim=c(0, 0.3), breaks = seq(-0.5, 9.5, 1), prob = T)
par(new=T)
plot(y, prob, xlim=c(-0.5, 9.5), ylim=c(0, 0.3), 
     xlab="", ylab="", main="", type = "b", lty = 2)