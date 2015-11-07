# aggregate function
require(ggplot2)
data(diamonds)
head(diamonds)

data1 <- aggregate(price ~ cut, diamonds, mean)
ggplot(data = data1) + geom_histogram(aes(x = cut))


ggplot(data1, aes(x = cut)) + geom_histogram()
plot(data1)

ggplot(data1, aes(x = cut, y = price)) + geom_line(group = cut)

data2 <- aggregate(price ~ cut + color, diamonds, mean)
plot(data2)
