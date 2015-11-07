require(ggplot2)
require(ggthemes)
g <- ggplot(diamonds, aes(x = carat, y = price))

# paint facet chart
g + geom_point(aes(color = color)) + facet_grid(cut~clarity)

ggplot(diamonds, aes(x = carat, color = color)) + geom_histogram() + facet_wrap(~color)

# ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_grid(~color)
ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()

# paint many boxplot by varialbe of x
ggplot(diamonds, aes(y = carat, x = cut))  + geom_violin()

# paint violin and point
ggplot(diamonds, aes(y = carat, x = cut))  + geom_point() + geom_violin() 
ggplot(diamonds, aes(y = carat, x = cut))  + geom_violin() + geom_point() 

ggplot(economics, aes(x = date, y = uempmed)) + geom_line()
# economics
# > colnames(economics)
# [1] "date"     "pce"      "pop"      "psavert"  "uempmed" 
# [6] "unemploy"