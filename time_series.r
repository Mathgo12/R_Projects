
vect.1 <- rnorm(2)
vect.2 <- c(3,4)
vect.3 <- c(1,2)

cat("First operation: ", vect.1 + vect.2, "\n")
cat("Second operation: ", vect.2 + vect.3, "\n")

#Modulo operator
num1 <- 12
num2 <- 5

print(num1%%num2) # prints 2

x=NULL
x[1]=0
for(i in 2:200){
  x[i] = x[i-1] + rnorm(1,0,5)
  
}

random_walk = diff(ts(x))
print(length(random_walk))

## Moving Average Processes - order 3

noise = rnorm(10000)
mov_avg3 = NULL
for(i in 4:10000){
  mov_avg3[i] = noise[i] + 0.7*noise[i-1] + 0.2*noise[i-2] + 0.1*noise[i-3]
  
}

moving_average_process = ts(mov_avg3[4:10000])
par(mfrow=c(2,1)) # multi frame plots - 2 columns and 1 row
plot(moving_average_process)
acf(moving_average_process)


## Maximum Likelihood Estimation

data = read.csv('R_Projects/Train_Tickets.csv')
hist(data$Count, breaks = 50,probability = T ,main = "Histogram of Count Variable")
lines(density(data$Count), col="red", lwd=2)

time_series = ts(data$Count, frequency=52, start=2012)

age = NULL
week_counter = 0
for(i in 1:length(data$Datetime)){
  age[i] = as.numeric(substring(data[i, 'Datetime'], 1, 2))
  
}





















