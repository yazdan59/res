
x <- rnorm(20)
summary(x)
y <- rnorm(30,mean = 1)
summary(y)
t.test(x,y)

x <- rnorm(20,mean = 1,sd = 1)
summary(x)
y <- rnorm(20,mean = 1,sd = 10)
summary(y)
t.test(x,y)

setwd("C:/Users/bioinf0/Desktop/work/Applied Statistics/Practical")
x = read.delim("cancer_stages.txt")

head(x)
rownames(x) = x[,1]
x = x[,-1]
x = log2(x+1)
x <- na.omit(x)
a = x[1:3,1]
a
b = x[4:10,1]
b
t.test(a,b)

t.test(x[1:3,5],x[4:10,5])
help("t.test")


x$cancers = rownames(x)
head(x)
x$cancers <- substr(x$cancers,1,nchar(x$cancers)-2)
y <- x[,c("BRAF","cancers")]
y
t.test(y[y$cancers=="AML",1],y[y$cancers=="Brain",1])
a <- aov(BRAF ~ cancers,y)
a
anova(a)
library(ggplot2)
ggplot(x,aes(cancers,BRAF,fill=cancers))+geom_boxplot()
TukeyHSD(a)

install.packages("multcomp")
library(multcomp)
summary(glht(a, linfct = mcp(cancers = "Tukey")))
y$cancers=as.factor(y$cancers)
a <- aov(BRAF ~ cancers,y)
anova(a)
summary(glht(a, linfct = mcp(cancers = "Tukey")))


y = t(x)
class(y)
y = data.frame(y)
class(y)
y$Gene = rownames(data.frame(y))
y
z = y[,"AML.1",drop=F]
z = y[,c("Gene","AML.1")]
z
ggplot(y,aes(x=Gene,y=AML.1))+geom_bar(stat="identity")
ggplot(y,aes(x=Gene,y=AML.1,fill=Gene))+geom_bar(stat="identity")
