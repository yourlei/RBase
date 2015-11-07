# define function
say.hello <- function() {
  print("hello, world!")
}

hello <-  function() {
  print("hello R!")
}
hello()

# function reference 
hello.person1 <- function (name) {
  print(sprintf("hello %s", name))
}
hello.person('java') # [1] "hello java"

hello.person2 <- function (first, last) {
  print(sprintf("hello %s %s", first, last))
}
hello.person2('lei', 'yu') # [1] "hello lei yu"
hello.person2(first = 'lei', last = 'yu')
hello.person2(last = 'yu', first = 'lei')

# hello.person2()
# function default reference

hello.person3 <- function (first = 'lei', last) {
  print(sprintf("hello %s %s", first, last))
}
# hello.person3(, 'feng') # [1] "hello lei feng"
hello.person3('zhang','lei')

hello.person4 <- function (first, last = 'Done') {
  print(sprintf('%s %s', first, last))
}
hello.person4('Just')

# extral reference
hello.person5 <- function (first, last = 'yu', ...) {
  print(sprintf('miss %s %s', first, last))
}
hello.person5('lei', 'yu', 'hello')

# return values
hello.person6 <-  function (x) {
  return (x*3)
}
hello.person6(2)
 ? return

# do.call function 
do.call(hello.person, args = list(name = 'leiyu'))
do.call(hello.person5, args = list(first = 'Geek'))

run.this <- function (x, func = mean) {
  do.call(func, args = list(x))
}
run.this(1:10)
run.this(1:10, sum)


# ------------------------
# chapter 9 
as.numeric(TRUE)
as.numeric(FALSE)

1 == 1
1 <= 1
1 != 1
 # flag <- 1
if (NULL) {
  print('hi, are you ready')
}

check.bool <- function (x) {
  if (x == 1) {
    print('hello')
  } else if (x == 0) 
  {
    print('goodbye')
  } else 
  {
    print('confuse')
  }
}
check.bool(1)

# switch 
use.switch <- function (x) 
{
  switch (x,
    'a' = 'first',
    'b' = 'second',
    'c' = 'last',
    'd' = 'third',
    'other')
}
use.switch('a') # 'first
use.switch('b')
use.switch('z')
use.switch(1) # 'first'
use.switch(5) # 'other'
use.switch(3) # 'last'

# ifelse
ifelse(1 == 1, 'yes', 'no')

toTest <- c(1, 1, 0, 1, 0)
ifelse(toTest == 1, 'yes', 'no')
ifelse(toTest == 1, toTest*3, 'zero')

toTest[2] <- NA

ifelse(toTest == 1, 'yes', 'no')
ifelse(toTest == 1, toTest*3, 'no')
# [1] "3"  NA   "no" "3"  "no"
# ----------------------------------
# && || & |
a <- c(1, 1, 0, 1)
b <- c(2, 1, 0, 1)
# compete all element
ifelse(a == 1 & b ==1, 'yes', 'no') 
# [1] "no"  "yes" "no"  "yes"
ifelse(a == 1 | b ==1, 'yes', 'no') 
# [1] "yes" "yes" "no"  "yes"

# only compete a element
ifelse(a == 1 && b == 1, 'yes', 'no')
# same as a[0] == 1 and b[0] == 1
# [1] "no"
ifelse(a == 1 || b == 1, 'yes', 'no') 
# same as a[0] == 1 or b[0] == 1
# [1] "yes"

# chapter 10
for (i in 1:10) {
  print(i)
}
fruit <- c('apple', 'banana', 'pomegranate')
fruitLength <- length(fruit)
fruitLength <- rep(NA, length(fruit))
fruitLength

R version 3.2.2 (2015-08-14) -- "Fire Safety"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R是自由软件，不带任何担保。
在某些条件下你可以将其自由散布。
用'license()'或'licence()'来看散布的详细条件。

R是个合作计划，有许多人为之做出了贡献.
用'contributors()'来看合作者的详细情况
用'citation()'会告诉你如何在出版物中正确地引用R或R程序包。

用'demo()'来看一些示范程序，用'help()'来阅读在线帮助文件，或
用'help.start()'通过HTML浏览器来看帮助文件。
用'q()'退出R.

[Workspace loaded from ~/program/RBase/.RData]

> ifelse(1 == 1, 'yes', 'no')
[1] "yes"
> ifelse(1 == 1, 'yes', 'no')
[1] "yes"
> 
  > toTest <- c(1, 1, 0, 1, 0)
> ifelse(toTest == 1, 'yes', 'no')
[1] "yes" "yes" "no"  "yes" "no" 
> ifelse(toTest == 1, toTest*3, 'zero')
[1] "3"    "3"    "zero" "3"    "zero"
> ifelse(toTest == 1, 'yes', 'no')
[1] "yes" "yes" "no"  "yes" "no" 
> toTest[2] <- NA
> ifelse(toTest == 1, 'yes', 'no')
[1] "yes" NA    "no"  "yes" "no" 
> ifelse(toTest == 1, toTest*3, 'no')
[1] "3"  NA   "no" "3"  "no"
> a <- c(1, 1, 0, 1)
> b <- c(2, 1, 0, 1)
> ifelse(a == 1 & b ==1, 'yes', 'no')
[1] "no"  "yes" "no"  "yes"
> ifelse(a == 1 | b ==1, 'yes', 'no')
[1] "yes" "yes" "no"  "yes"
> ifelse(a == 1 && b == 1, 'yes', 'no')
[1] "no"
> ifelse(a == 1 || b == 1, 'yes', 'no')
[1] "yes"
> print(i)
Error in print(i) : 找不到对象'i'
> for (i in 10) {
  +   print(i)
  + }
[1] 10
> for (i in 1:10) {
  +   print(i)
  + }
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
> fruitLength
错误: 找不到对象'fruitLength'
> fruit <- c('apple', 'banana', 'pomegranate')
> fruitLength <- length(fruit)
> fruitLength <- NA
> fruitLength
[1] NA
> fruitLength <- rep(NA, length(fruit))
> fruitLength
[1] NA NA NA

n <- 1

names(fruitLength) <- fruit
fruitLength
for (a in fruit) {
  fruitLength[a] <- nchar(a)
}
fruitLength

fruitLength2 <- nchar(fruit)
names(fruitLength2) <- fruit
fruitLength2
# > ? rep
# > rep(1:4, 2)
# [1] 1 2 3 4 1 2 3 4

# > rep(1:4, each = 2, len = 4) 
# [1] 1 1 2 2
# > rep(1:4, each = 2, len = 8) 
# [1] 1 1 2 2 3 3 4 4

# --------------------------------
# identical function
identical(fruitLength, fruitLength2)
# TRUE
x <- 1
while (x < 5) {
  print(x)
  x <- x+1
}
# --------------------------
# --------------------------










