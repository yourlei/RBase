# define variable
x <- 2
z <- y <- 3
z; y;
# delete z
rm(z)
# z 错误: 找不到对象'z'
# define variable by assign()
assign('j', 10)
j
# data type by function class()
class(j) # numeric
class('leiyu') # character
class(5L) # integer
class(TRUE) # logical
class(as.Date('2015-10-20')) # date

# the length of char or numeric by nchar
person <- 'chinese'
nchar(person) # 7

# factor
x <- factor('chinese')
# nchar(x) # Error in nchar(x) : 'nchar()'需要字符矢量

# date convert to numeric
dt <- as.Date('2015-10-20')
as.numeric(dt) # [1] 16728 /day

dt2 <- as.POSIXct('2015-10-20 20:20')
as.numeric(dt2) #[1] 1445343600 /s

# logical
is.logical(TRUE) # TRUE
is.logical(FALSE) # TRUE

'data' < 'status' # comparition char length # TRUE

# -----------vector-----------
x1 <-  c(1:10) 
x1 # [1]  1  2  3  4  5  6  7  8  9 10

x2 <- 1:10
x2 # [1]  1  2  3  4  5  6  7  8  9 10

x3 <- c('A', 'B', 'C')
x3 # [1] "A" "B" "C"

# x4 <- c('a':'c')
# x4 # 错误: 找不到对象'x4'

x2 * 2 # [1]  2  4  6  8 10 12 14 16 18 20
x2 - 1 # [1] 0 1 2 3 4 5 6 7 8 9
x2^2 # [1]   1   4   9  16  25  36  49  64  81 100

sqrt(x2) # [1] 1.000000 1.414214 1.732051 2.000000 2.236068 2.449490
# [7] 2.645751 2.828427 3.000000 3.162278

-5:4 # [1] -5 -4 -3 -2 -1  0  1  2  3  4
# --------------vector operator---------------
ax <- c(1:10)
ay <- c(-5:4)
ax + ay # [1] -4 -2  0  2  4  6  8 10 12 14
ax - ay # [1] 6 6 6 6 6 6 6 6 6 6
ax * ay # [1] -5 -8 -9 -8 -5  0  7 16 27 40

# --------check the length of ax, ay--------
length(ax) # 10
length(ay) # 10

length(ax + ay) # 10

by <- c(1:5)
ax + by # [1]  2  4  6  8 10  7  9 11 13 15
# the same as:
# ax [1]  1  2  3  4  5  6  7  8  9 10
# by [1]  1  2  3  4  5  1  2  3  4  5

# -----------Waring--------------------
#ax + c(1:3) 
# Warning message:
# In ax + c(1:3) : 长的对象长度不是短的对象长度的整倍数

ax <= 5 #  [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE
#[10] FALSE

ax > by #  [1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
#[10]  TRUE

# ---------------any() / all()------------------
any(ax > ay) # TRUE
all(ax > ay) # TRUE
all(ax > c(8:12)) # FALSE

# --------------------nchar----------------------
ac <- c('Hockey', 'Football', 'Baseball', 'Curling', 'Soccer')
nchar(ac) # [1] 6 8 8 7 6

acFactor <- as.factor(ac)
as.numeric(acFactor) # [1] 4 3 1 2 5

as.numeric(as.factor(c(3, 5, 20, 39, 14, 19)))
# [1] 1 2 5 6 3 4

class(5L / 4L)
char <- 'data'
nchar(char)

num <- 1234
nchar(num)

date1 <-  as.Date('2015-10-20')
date1

time2 <-  as.POSIXct('2015-10-20 23:20')
time2

as.numeric(date1)
as.numeric(time2)


TRUE * 5
FALSE * 5

is.logical(TRUE)

vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(1:5)
vector3 <- 1:5
vector1
vector2
vector3

vector1 * 2
sqrt(vector1)

x <- c(1:10)
y <- c(11:20)
x < y
name <-  c('dog', 'cat', 'duck', 'fish', 'monkey', 'pig')
nchar(name)

nums <- c(one = 'a', two = 'b', last = 'c')

c <-  1:3
names(c) <- c('a', 'b', 'c')
c
? names

data <- c(1, 2, NA, 8, NA)
is.na(data)

data2 <- c(1, NULL, 2)
data2

is.null(NULL)




