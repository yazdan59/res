
mtcars
x <- mtcars[,"wt"]
hist(x)

summary(mtcars["wt"])

setwd("C:/Users/bioinf0/Desktop/work/Applied Statistics/Practical")
x = read.delim("cancer_stages.txt")
head(x)
rownames(x) = x[,1]
x = x[,-1]
x = log2(x+1)
x <- na.omit(x)
summary(x[,1])
summary(x)


install.packages("ggplot2")
install.packages("reshape")
library(ggplot2)
library(reshape)
x = read.delim("cancer_stages.txt")
rownames(x) = x[,1]
x = x[,-1]
x = log2(x+1)
x <- na.omit(x)
x.m <- melt(x)
head(x.m)
ggplot(x.m,aes(x=variable,y=value))+geom_boxplot()
ggplot(x.m,aes(x=variable,y=value,fill=variable))+geom_boxplot()
ggplot(x.m,aes(x=variable,y=value,fill=variable))+geom_violin()

x = read.delim("cancer_stages.txt")
head(x)
rownames(x) = x[,1]
x = x[,-1]
x = log2(x+1)
x <- na.omit(x)
y <- t(x)
y.m <- melt(y)
head(y.m)
ggplot(y.m,aes(x=X2,y=value,fill=X2))+geom_boxplot()
ggplot(y.m,aes(x=X2,y=value,fill=X2))+geom_boxplot()+guides(fill=FALSE)