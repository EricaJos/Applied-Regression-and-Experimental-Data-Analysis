#to Run: Rscript lab1-examples-data.R

#get or set working directory, which is the place to store the data.
getwd()
#setwd("yourpath") #doesn't run here
# read data
mydata=read.csv("binary.csv", header=T)
# header asks R to use the first row as the variable name.
# check the data by using dim(), head(), tail()
dim(mydata); head(mydata); tail(mydata)

#view the data
View(mydata)

# In this data there are 4 columns, which are admit, gre, gpa, rank
# set x is the admit and y is gre
x=mydata$admit
y=mydata$gre
# take a subset of the data
index=c(1:10)
mysub1=mydata[index, ]# take rows identified by index, all column included
mysub2=mydata[-index, c(1,2)] #take rows not identified by index, only column 1, 2, included.