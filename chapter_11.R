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

# plyr package
require(plyr)
head(baseball)
# OBP = H+BB+HBP / AB+BB+HBP+SR
baseball$sf[baseball$year < 1954] <- 0
any(is.na(baseball$sf))

baseball$hbp[is.na(baseball$hbp)] <- 0
any(is.na(baseball$hbp))

baseball <- baseball[baseball$ab >= 50, ]
# caculate OBP
baseball$OBP <- with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))
tail(baseball)


