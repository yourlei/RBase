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
<<<<<<< HEAD

# plyr package
require(plyr)
head(baseball)
# OBP = H+BB+HBP / AB+BB+HBP+SR
baseball$sf[baseball$year < 1954] <- 0
any(is.na(baseball$sf))

baseball$hbp[is.na(baseball$hbp)] <- 0
any(is.na(baseball$hbp))

baseball <- baseball[baseball$ab >= 50, ]
# calculate OBP
baseball$OBP <- with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))
tail(baseball)

# 计算每个球员职业生涯的上垒率
obp <-  function (data) {
  c(OBP = with(data, sum(h + bb + hbp) / sum(ab + bb + hbp +sf)))
}
careerOBP <- ddply(baseball, .variables = 'id', .fun = obp)
colnames(careerOBP) # [1] "id"  "OBP"
careerOBP <- careerOBP[order(careerOBP$OBP, decreasing = TRUE), ]
head(careerOBP, 10)
# id       OBP
# 1089 willite01 0.4816861
# 875   ruthba01 0.4742209
# 658  mcgrajo01 0.4657478
# 356  gehrilo01 0.4477848
# 85   bondsba01 0.4444622
# 476  hornsro01 0.4339068
# 184   cobbty01 0.4329655
# 327   foxxji01 0.4290509
# 953  speaktr01 0.4283386
# 191  collied01 0.4251246

# llply
theList <- list(A = matrix(1:9, 3), B = 1:5, c = matrix(1:4, 2), D = 2)
lapply(theList, sum)

llply(theList, sum)

identical(lapply(theList, sum), llply(theList, sum))
sapply(theList, sum)


system.time(dlply(baseball, 'id', nrow))
iBaseball <- idata.frame(baseball)
system.time(dlply(iBaseball, 'id', nrow))

# data.table
require(data.table)
theDF <- data.frame(A = 1:10, B = letters[1:10], C = LETTERS[11:20],
                    D = rep(c('one', 'two', 'three'), length.out = 10))

theDT <-  data.table(A = 1:10, B = letters[1:10], C = LETTERS[11:20],
                     D = rep(c('one', 'two', 'three'), length.out = 10))
class(theDF$B)  # [1] "factor
class(theDT$C) # [1] "character"








# =======
# >>>>>>> be158c1ba720fae22a04de0c73cbc8237c802cfd
