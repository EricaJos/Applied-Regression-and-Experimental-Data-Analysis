#to Run: Rscript lab1-examples-basics.R
# create vector object and name it as x
x<- c(1, 2, 3, 4, 5)
x

y<- c("one", "two", "three")
y

# length
length(x); length(y) ## note if you want to have two commands in a line, use ; to separate them.

# list objects
ls()

# remove object
rm(y); ls()

# generate a matrix
z<-matrix(c(1,2,3,4), nrow=2, ncol=2, byrow=F) # byrow decides how the values placed
z

# sqrt, exp, log
sqrt(z);

x=c(1:5); x

exp(x); log(x)

# mean(), var(), sq()
mean(x); var(x); sd(x) # mean, var, sd of a vector

mean(z); var(z); sd(z)

#mean,var,sd of a matrix.mean and sd return a single value,
#butvar()return a matrix which is the variance-covariance of the columns
mean(z[1,]) #mean of row1 of matrix z

var(z[,1])#varofcolumn1ofmatrixz

#set random seed equal to 100
set.seed(100)
#generating a random sample of subject x with size.
x=c(1:10); sample(x,size=2)

x=c("one","two","three")
sample(x,size=5,replace=TRUE)

#the sampling is by default without replace
#and when the number of object x is small than the size you have to use replace.
sample(10,size=3)

#if object is a number 10 with size 3 it will generate 3 random numbers ranged from 1 to 10.
#You can use this to generate sample index if you want to get a random subset of your data.
#generating random sample x of size 10 from normal distribution with mean 1 and sd 2.
x<-rnorm(n=10,mean=1,sd=2)
mean(x)

#generating repeated value
rep(1,10)#generate 10 ones.

x=c(rep(1,50),rep(2,30))#generate 50 ones and 30 twos.
table(x)