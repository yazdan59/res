
x <- runif(30)
y <- runif(30)
plot(x,y)
wilcox.test(x,y)
y <- runif(30,max=1.5)
wilcox.test(x,y)
?wilcox.test

setwd("C:/Users/yazdan/Desktop/Applied Statistics/Practical/07-nonpar/")
x = read.csv("wilcox.csv")
head(x)

hist(x$KRAS1)
hist(x$KRAS2)
wilcox.test(x$KRAS1, x$KRAS2,paired = TRUE) 
t.test(x$KRAS1,x$KRAS2,paired = TRUE)

hist(x$BRAF1)
hist(x$BRAF2)
wilcox.test(x$BRAF1, x$BRAF2,paired = TRUE) 
t.test(x$BRAF1,x$BRAF2,paired = TRUE)

y = read.csv("kruskal.csv")
head(y)
kruskal.test(BRAF ~ Month, data = y)


r <- runif(30,80,440)
write.csv(r, file = "1.csv")
