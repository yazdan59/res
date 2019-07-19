
setwd("C:/Users/yazdan/Desktop/Applied Statistics/Practical")
x = read.delim("cancer_stages.txt")

head(x)
rownames(x) = x[,1]
x = x[,-1]
x = log2(x+1)
x <- na.omit(x)

x.cor <- cor(x)
library(pheatmap)
library(ggplot2)

pheatmap(x.cor)
ggplot(x,aes(P53,RAF1))+geom_point()
ggplot(x,aes(P53,BRCA1))+geom_point()
ggplot(x,aes(P53,BRCA1))+geom_point()+geom_smooth(method = "lm")

y <- t(x)
y.cor <- cor(y)
pheatmap(y.cor)

a <- c(0,4,3,0,1)
b <- c(37,39,38,36.8,37.5)

cor(a,b,method = "spearman")

cor(a,b)
cor.test(a,b)
