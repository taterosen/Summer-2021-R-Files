regressionData = read.table(file.choose(), header = TRUE, sep = ",") #use OA8.1
library(ggplot2)
ggplot(regressionData, aes(x=x, y=y)) + geom_point() + stat_smooth(method="lm")
lm(y~x, regressionData)
