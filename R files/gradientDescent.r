regressionData <- read.csv(file.choose(), header = TRUE, sep = ",") #use OA8.1

#build a linear model 
model <- lm(y~x, data=regressionData)
summary(model)

#visualize the model
attach(regressionData)
plot(x, y, col=rgb(0.2,0.4,0.6,0.4), main = "Linear regression")
abline(model, col = "red")

#cost function
theta <- matrix(c(0,0), nrow = 2)
num_iterations <- 300
alpha <- 0.01

cost_history <- double(num_iterations)
theta_history <- list(num_iterations)

X <- cbind(1, matrix(x))

for(i in 1:num_iterations){
  error <- (X%*%theta-y)
  delta <- t(X) %*% error/length(y)
  theta <- theta-alpha*delta
  cost_history[i] <- cost (X, y, theta)
  theta_history[[i]] <- theta
}
print(theta)

plot(x,y,main = "gradient descent")
abline(coef = theta_history[[1]])
abline(coef = theta_history[[2]])
abline(coef = theta_history[[3]])
abline(coef = theta_history[[4]])
abline(coef = theta_history[[5]])
