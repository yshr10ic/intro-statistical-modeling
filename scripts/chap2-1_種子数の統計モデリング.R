# Load data
load("data/data.RData")

# Check data
data
length(data)
summary(data)

# 度数分布
table(data)

# Histgram
hist(data, breaks = seq(-0.5, 9.5, 1))

# Variance
var(data)

# Standard deviation
sd(data)
