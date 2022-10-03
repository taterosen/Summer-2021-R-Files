custdata = read.table(file.choose(),header = T, sep = '\t') # use OA6.1
library(ggplot2)

# histogram for age data
ggplot(custdata) +geom_histogram(aes(x=age), binwidth=5, fill="blue")

# bar graph for marital status data
ggplot(custdata) +geom_bar(aes(x=marital.stat), fill="red")

# pie chart for housing types
contigencyTable <- table(custdata$housing.type)
pie(contigencyTable, main="pie chart of housing types")

# basic correlation: age and income
custdata <- read.csv('custdata.tsv', header = TRUE, sep = '\t')
cor(custdata$age, custdata$income)

# same correlation but accounting for values of 0
custdata2 <- subset(custdata, (custdata$age > 0 & custdata$age < 100 &
                                 custdata$income > 0))
cor(custdata2$age, custdata2$income)