#to run: Rscript week4/lab2-exercises.R

#Q1. Read the data “Boston.csv” into R and use dim() to report the sample size and number of variables.
#Use head() to check the first 6 lines of the data and report the variable names. Use summary() to look at
#the summary statistics of the variable. Please note from descriptions of predictors, “chas” is a 0-1
#variable, but summary() cannot distinguish if a variable is a continuous or a categorical or a
#count data if they are all numerical. So it’s very important to understand the meaning of the
#data.


#set up working directory
getwd()
#Read the data
mydata=read.csv("Boston.csv", header=T)
# use dim(), head()
dim(mydata)
head(mydata)


#Q2. Use pairs() to plot the paired scatter plots and cor() to calculate the paired linear correlation between
#variables. Report which predictor has the highest linear correlation with medv (Note, use absolute value of
#the correlation to determine this). Is this correlation a positive or negative correlation?

png("week4/lab2-examples-graphs.png", width=1800, height=1200, res=150)
# use pairs() and cor()
pairs(mydata[c("crim", "rm", "lstat", "medv")]) #text.panel = NULL
cor(mydata)

#Q3. crim is one of the predictors in Boston data. Use medv as response, crim as predictor, conduct a
#simple linear regression. Report the result and decide if crim is a significant variable that associated with
#medv or not (use 0.05 significant level). Explain how you get this conclusion.

# use lm() and summary() to do simple linear regression model
myfit.final<-lm(medv~crim, data=mydata)
summary(myfit.final)

#Q4. Use medv as response, all other variables in Boston data as predictors, conduct a multiple linear
#regression. Report which predictor(s) is(are) significant variable(s). Use adjust R2 of this model and simple
#linear regression model in Q3 to decide which model you think is better and how do you get this conclusion.
#Report F-statistics and related p-value, and explain if the fitting model is better than null model and why
#(use 0.05 significant level)

# Use lm() and summary() to do multiple linear regression model
myfit2.final<-lm(medv~crim, data=data.frame(TV=10, radio=10, newspaper=10))
summary(myfit2.final)
summary(myfit2.final)

#Q5. Plot the four diagnostics for simple linear regression in Q3 and multiple linear regression in Q4 and
#report your findings.

# Diagnostic plots for simple linear regression model
# Diagnostic plots for multiple linear regression model

#Q6. Conduct ANOVA analysis to compare simple linear regression in Q3 with multiple linear regression
#model in Q4.

# ANOVA to compare simple linear regression model with multiple linear regression model