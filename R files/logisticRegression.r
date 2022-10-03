titanic.data <- read.csv(file.choose(), header = TRUE, sep = ",") #use OA9.13??
#View(titanic.data)

sapply(titanic.data, function(x) sum(is.na(x)))
sapply(titanic.data, function(x) length(unique(x)))

titanic.data$Age [is.na(titanic.data$Age)] <- mean(titanic.data$Age, na.rm = T)
