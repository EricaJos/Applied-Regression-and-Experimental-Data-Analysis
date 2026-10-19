#to Run: Rscript lab1-excercises.R

#Q1. Read the data “binary.csv” into R and name it as mydata, view mydata. Use dim() to report the sample
#size and number of variables. Use head() to check the first 6 lines of the data and report the variable names.

#setup your working directory
getwd()
#read the data
mydata=read.csv("binary.csv", header=T)
#View(mydata)
# use dim(), head(), View()
'dim:';dim(mydata);'head:'; head(mydata);'tail:'; tail(mydata)


#Q2. Let x is the variable “gre”, y is the “gpa”, and z is “rank” of mydata. Note rank is a categorical variable 
#with 3 groups.

#2.1) Use table() to show the contingency table (group and freqency) of z. 2.2) Calculate mean, variance and
#standard deviation of x and y. 2.3) Plot the scatter plot of x and y. 2.4) Plot the histogram of x. 2.5) Plot
#the box plot of y then plot box plot of y by z.

#Let x is the variable "gre", y is the "gpa", and z is "rank" of mydata.
x=mydata$gre
y=mydata$gpa
z=mydata$rank
#2.1) Use table() to show the contingency table (group and freqency) of z.
'table';table(z)
#2.2) Calculate mean, variance and standard deviation of x and y.
'x';mean(x); var(x); sd(x)
'y';mean(y); var(y); sd(y)
#2.3) Plot the scatter plot of x and y.
png("lab1-excercises2-graphs.png", width=1800, height=1200, res=150)
par(mfrow=c(2,2))
plot(x,y)
#2.4) Plot the histogram of x.
hist(x)
#2.5) Plot the box plot of y then plot box plot of y by z.
boxplot(y)
boxplot(y~z)


#Q3. Use the last three digit numbers of your registration number as seeds to set up random seed. Then use
#sample() function to generate a random index with size=100 and then take the subset of mydata using this
#random index. Repeat all steps in Q2.

# Setup random seeds by using the last three digit numbers of your registration number
set.seed(165)
# Use sample() function to generate a random index with size=100,
random_index=sample(nrow(mydata), size=100)
# then take the subset of mydata using this random index, name this new data set as mysubset.
mysubset=mydata[random_index, ]
# Repeat all steps in Q2 for mysubset.
#Let x is the variable "gre", y is the "gpa", and z is "rank" of mysubdata.
x=mysubset$gre
y=mysubset$gpa
z=mysubset$rank
#3.1) Use table() to show the contingency table (group and freqency) of z.
'table';table(z)
#3.2) Calculate mean, variance and standard deviation of x and y.
'x';mean(x); var(x); sd(x)
'y';mean(y); var(y); sd(y)
#3.3) Plot the scatter plot of x and y.
png("lab1-excercises3-graphs.png", width=1800, height=1200, res=150)
par(mfrow=c(2,2))
plot(x,y)
#3.4) Plot the histogram of x.
hist(x)
#3.5) Plot the box plot of y then plot box plot of y by z.
boxplot(y)
boxplot(y~z)