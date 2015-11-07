# data.frame
x <- 1:10
y <- -4:5
z <-  c('Hockey', 'Football', 'Baseball', 'Curling', 'Rugby',
        'Lacrosse', 'Basketball', 'Tennis', 'Cricket', 'Soccer')

# DF <- data.frame(x, y, z)

DF <- data.frame(First = x, Second = y, Sport = z)
DF
# out [row][col]
dim(DF)
# [1] 10  3
nrow(DF)
ncol(DF)

# output name of col
names(DF)
# [1] "First"  "Second" "Sport" 

# set the name of row
rownames(DF)
# [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"
rownames(DF) <- c('one', 'two', 'three', 'four', 'five'
                  , 'six', 'seven', 'eight', 'night', 'ten')
rownames(DF)

rownames(DF) <- NULL
rownames(DF)

# set output the number of row
head(DF)
head(DF, n=7)

tail(DF)
class(DF)
# [1] "data.frame"

# output first col
DF[1]
# output first row
DF[1, ,]
#   First Second  Sport
# 1     1     -4 Hockey

DF[2, 3]
# [1] Football

names(DF)
# output the col which name is Second
DF$Second

# the same as DF{2, 2}, DF[2, 3]
DF[2, 2:3]

DF[, 3]
DF[2, ]
DF[, 2:3]

DF['First']

DF[, 3, drop = FALSE]
# DFtest <- data.frame(c(1:4), 1:5)
# DFtest
# Error in data.frame(c(1:4), 1:5) : 参数值意味着不同的行数: 4, 5


#-------list---------
# create 2 element list
list1 <- list(1, 2, 3)
list1[1]

# create 1 element list
list2 <- list(c(1, 2, 3))
list2
# [[1]]
# [1] 1 2 3

list3 <- list(c(1:3), 3:7)
list3

list4 <- list(DF, 1:10)
list4[1]
names(list4)

names(list4) <- c('data.frame', 'vector')
names(list4)
list4['vector']
