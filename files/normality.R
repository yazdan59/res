normal = rnorm(100); 
not_normal = runif(100)
hist(normal,probability=T, main="Histogram of normal data",
     xlab="Approximately normally distributed data")
lines(density(normal),col=2)
hist(not_normal,probability=T, main="Histogram of skewed data",
     xlab="Very skewed data")
lines(density(not_normal),col=2)

qqnorm(normal,main="QQ plot of normal data",pch=19)
qqline(normal)

qqnorm(not_normal,main="QQ plot of normal data",pch=19)
qqline(not_normal)

# Shapiro-Wilk normality test
shapiro.test(normal)
shapiro.test(not_normal)

# Kolmogorov-Smirnov test
ks.test(normal,"pnorm",mean(normal),sd(normal))
# Kolmogorov-Smirnov test 
# Why it passed the normality test while it is NOT normal?
ks.test(not_normal,"pnorm",mean(not_normal),sd(not_normal))


# Some mistakes in normality check tests

set.seed(12345)
x <- runif(50,2,4)
ks.test(x,"pnorm",mean(x),sd(x))

# Cautious Examples in Normality Tests (Small Size)
# Example #1 (Binomial Dist.)
set.seed(100)
x <- rbinom(15,5,.6)
hist(x)
shapiro.test(x)
qqnorm(x,main="QQ plot of normal data",pch=19)
qqline(x)

# Example #2 (Logarithm)
y <- rlnorm(20,0,.4)
hist(y)
shapiro.test(y)
qqnorm(y,main="QQ plot of normal data",pch=19)
qqline(y)

# Example #3 (Uniform Dist.)
z <- runif(500)
hist(z)
qqnorm(z,main="QQ plot of normal data",pch=19)
qqline(z)
shapiro.test(z)

# Cautious Examples in Normality Tests (Large Size)
# Example #4 (t Dist.)
install.packages("nortest")
library(nortest)
x <- rt(500000,200)
# Anderson-Darling normality test
ad.test(x)
qqnorm(x)
hist(x)
