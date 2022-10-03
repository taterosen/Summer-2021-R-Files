size = read.table(file.choose(), header = T, sep = ',') #use OA6.4
print(summary(size))

library(ggplot2)
ggplot(size, aes(x=Height, y=Weight)) + geom_point() + 
  geom_smooth() + ylim(100,200)