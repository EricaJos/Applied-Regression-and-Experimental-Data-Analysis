#to Run: Rscript lab1-examples-graphics.R

# create vector object and name it as x
#set random seed equal to 100
set.seed(100)
#generating 1000 normal sample with mean 1 and sd 2 and plot histogram
y<-rnorm(n=1000, mean=1, sd=2)
png("lab1-examples-graphs.png", width=1800, height=1200, res=150)
par(mfrow=c(2,3))
hist(y) # frequency plot

hist(y, freq=F, main="Histogram", xlab="normal value", ylab="density")# density plot

#generating box plot
boxplot(y)

x<-c(rep(1,500),rep(2,500)) #generate two groups,each with 500 repeated values.
table(x)#frequency of two groups

boxplot(y~x)#boxplotbygroups

#generating plot of x and y
x<-c(1:100)
y=1+0.15*x+rnorm(100)#if mean and sd are not given, it will generate standard normal
plot(x,y)

plot(x, y, main="Connect plot of x and y", xlab="x value", ylab="y value", type="l")
dev.off()