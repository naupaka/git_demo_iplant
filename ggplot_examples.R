# ggplot learning script
# Naupaka Zimmerman naupaka@gmail.com
# February 22, 2015

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
myplot 

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

dim(diamonds)
dim(diamonds)[1]

ggplot(d2, aes(carat, price, color=color)) + geom_point()

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

library("reshape2")
df  <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
    geom_bar(stat = "identity", position = "dodge") +
    scale_fill_brewer(palette = "Set1")
￼
