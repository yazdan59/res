x=2

setwd("C:/Users/yazdan/Desktop/Applied Statistics/Practical")
x = read.delim("cancer_stages.txt")

head(x)
rownames(x) = x[,1]

x[-1,]
x[,-1]

x = x[,-1]
head(x)
head(x[,-1])
dim(x)
ncol(x)
x[1,1:3]
x[1,c(1,3,5)]

heatmap(x)
class(x)
heatmap(as.matrix(x))
class(x)

x = log2(x+1)
x <- na.omit(x)
heatmap(as.matrix(x))

pheatmap(x)
install.packages("pheatmap")
# if Error called :there is no package called 'plyr'
# install.packages("plyr")
# Then install pheatmap
library(pheatmap)
pheatmap(x)
pheatmap(x,fontsize_row = 5)
pheatmap(x,fontsize_row = 5,border_color = NA)

pdf("~/plot.pdf")
pheatmap(x,fontsize_row = 5,border_color = NA)
dev.off()

head(x)
colnames(x)
x[,"BRAF"]
barplot(x[,"BRAF"])