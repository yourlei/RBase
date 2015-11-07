# url <- 'http://www.jaredlander.com/data/Tomato%20First.csv'
# tomato <- read.table(file = url, header = TRUE, sep = ',')


# ? read.table(file, header = FALSE, sep = '')
# read.table() read data of table format 
# head(tomato)

x <- 1:10
y <- -4:5
q <- c('one', 'two','three', 'four', 'five', 'six', 'seven'
       , 'eight', 'night', 'ten')
DF <- data.frame(First = x, Second = y, Num = q, stringsAsFactors = FALSE)
DF$Num
# class(DF)

# read.table(file = DF, header = TRUE, sep = ',')

save(tomato, file = 'data/tomata.rdata')
rm(tomato)
# head(tomato)
# tomata <- load('data/tomata.rdata')
# head(tomata)
# save()
# tomato <- read.table(file = 'data/Tomato.First.csv', header = TRUE, sep = ',')
# head(tomato)

#---------------------------------------
# read table data and save to .rdata file
#---------------------------------------
save(tomato, file = 'data/tomato.rdata')
rm(tomato)

load('data/tomato.rdata')
head(tomato)

n <- 20
r <- 1:10
w <- data.frame(n, r)
# n
# r
# w
save(n, r, w, file = 'data/multiple.rdata')
rm(n, r, w)

load(file = 'data/multiple.rdata')
# w$r
# ------------------------------------
# read web table data by XML package
# ------------------------------------

require(XML)
theurl <- 'http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/'
bowlpool <- readHTMLTable(theurl, which = 1, header = FALSE,
                          stringsAsFactors = FALSE)
bowlpool

# ----------------------------------------
# read lib.gzhu.edu enter liberary people
# ----------------------------------------
lib <- 'http://lib.gzhu.edu.cn:8080/bookle/goLibTotal/index'
libpop <- readHTMLTable(lib, which = 1, header = FALSE,
                        stringsAsFactors = FALSE)
# nrow(libpop) # 14
# ncol(libpop) # 4

colnames(libpop) <- c('academy', 'total', 'enter', 'scale')
# class(libpop)
# libpop$total
# save(libpop, file = 'data/enterLib1.rdata')
# rm(libpop)
# load('data/enterLib1.rdata')
# libpop$academy
class(libpop$enter)
# sum(as.numeric(as.character(libpop$enter)))
# hist(libpop, main = 'academy', xlab = 'enter')
# 
# load('data/enterLib1.rdata')
require(ggplot2)
data("diamonds")
head(diamonds)
hist(diamonds$carat, main = 'Carat Histogram', xlab = 'Carat')

plot(price~carat, data = diamonds)
# ---------the same as-----------
plot(diamonds$carat, diamonds$price, xlab = 'carat', ylab = 'price')

# lines(lowess(diamonds$price))
boxplot(diamonds$price, main = 'diamonds price', ylab = 'price')
mean(diamonds$price)
require(stats)
# plot(cars$speed, cars$dist, xlab = 'speed', ylab = 'dist')
# plot(cars)
# lines(lowess(cars))
