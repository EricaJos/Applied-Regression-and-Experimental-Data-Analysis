#to run: Rscript week4/lab2-examples-linearRegression.R

# set up working directory
# read the data
mydata=read.csv("Advertising.csv", header=T)
head(mydata)

# summary the data
summary(mydata)

# use linear regression to fit the data and summary the output
myfit.simple<-lm(sales~TV, data=mydata)
summary(myfit.simple)

anova(myfit.simple)

#show paired plots of outcome and predictions and check the correlation among them.
pairs(mydata)

cor(mydata)

#use linear regression to fit the data and summary the output
myfit.full<-lm(sales~.,data=mydata)
#.here represent all variable except sales in my data.
#It equivalent to the following commend
#myfit.full<-lm(sales~TV+radio+newspaper,data=mydata)
#summarize linear regression fit
summary(myfit.full)

# get confidence interval for the coefficient estimates
confint(myfit.full)

# give prediction value and prediction interval based on
#
# new data (TV=10, radio=10, newspaper=10)
# data.frame() used below defines a new data structure with
#
# three variables TV, radio, newspaper.
predict(myfit.full, newdata=data.frame(TV=10, radio=10, newspaper=10),
interval="prediction")

# use linear regression to fit the data and summary the output
myfit.final<-lm(sales~TV+radio, data=mydata)
summary(myfit.final)

# anova for simple and full model
anova(myfit.simple, myfit.full)

# anova for simple and final
anova(myfit.simple, myfit.final)

# anova for full and final
anova(myfit.final, myfit.full)


#make four diagnostic plots after fitting
plot(myfit.final)

#We can also calculate leverage statistics to identify the high leverage observations.
leverage<-hatvalues(myfit.final)
plot(leverage)

#output the index of the observation with largest leverage statistics
which.max(leverage)

#order leverage statistics from largest to smallest and output the index of the first ten
order(leverage, decreasing=T)

#install.packages("car")
# calculate vif score, any variable with vif > 5 (sometime 10) indicating high linear dependency
library(car)

library(carData)
vif(myfit.full)

# calculate correlation
cor(mydata)