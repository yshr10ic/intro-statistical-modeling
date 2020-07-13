# Change directory
setwd("~/Work/GitHub/intro-statistical-modeling")

# Load data
d <- read.csv("data/data3.csv", stringsAsFactors = TRUE)
d

# Check class
class(d)
class(d$y)
class(d$x)
class(d$f)

# Summary
summary(d)

# Plot data
plot(d$x, d$y, pch = c(21, 19)[d$f])
legend("topleft", legend = c("C", "T"), pch = c(21, 19))

plot(d$f, d$y)

# Fitting
fit <- glm(y ~ x, data = d, family = poisson)
fit
summary(fit)

# Maximum log likelihood
logLik(fit)

# Prediction
plot(d$x, d$y, pch = c(21, 19)[d$f])
xx <- seq(min(d$x), max(d$x), length = 100)
lines(xx, exp(1.29 + 0.0757 * xx), lwd = 2)
yy <- predict(fit, newdata = data.frame(x = xx), type = "response")
lines(xx, yy, lwd = 2)

# Factor model
fit.f <- glm(y ~ f, data = d, family = poisson)
fit.f
logLik(fit.f)

# All model
fit.all <- glm(y ~ x + f, data = d, family = poisson)
fit.all
logLik(fit.all)