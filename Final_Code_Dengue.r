## remove all objects previously stored ##
rm(list=ls())
## To see is there any object left ##
ls()

## Provide  the location where data is stored ##
data<-read.csv('/home/abhowmik/Downloads/Degue_Data.csv', header=TRUE)
attach(data)
names(data)

## Extract variables and name them ##

y<-as.vector(data$DI)
x1<-as.vector(data$Mean_T)         
x2<-as.vector(data$Min_T)
x3<-as.vector(data$Max_T)

x4<-as.vector(data$Precipitation)
## change scale of x4 for numerical stability ##
log_x4<-as.vector(log(x4))

x5<-as.vector(data$Pop_Bangladesh)
## change scale of x5 for numerical stability ##
log_x5<-log(x5)

x6<-as.vector(data$Urban)
## change scale of x6 for numerical stability ##
log_x6<-log(x6)
         
x7<-as.vector(data$Rural)
## change scale of x7 for numerical stability ##
log_x7<-log(x7)

x8<-as.vector(data$Pop_density)
log_x8<-log(x8)
      

## Descriptive statistics of count and explanatory variables ##

summary(y)
summary(x1)
summary(x2)
summary(x3)
summary(log_x4)
summary(log_x5)
summary(log_x6)
summary(log_x7)
summary(x8)

## Produce histogram of count variable to know the shape ##

hist(y,breaks=25,xlab="Infected Cases",main="Histogram of count")

## checking mean and variance ##
mean(y)
var(y)
var(y)/mean(y)## Producing pairwise correlation along with smooth fitted line ##

## Creating Data frame ##
data<- data.frame(Infected_Cases= c(y),
                  Mean_temperature = c(x1),Min_temperature=c(x2),Max_temperature=c(x3),
                  log_Precipitation=c(log_x4),log_Total_population=c(log_x5),log_Urban=c(log_x6),
                  log_Rural=c(log_x7), Population_density=c(x8))


data<- data.frame(Infected_Cases= c(y),
                  Mean_temperature = c(x1),Min_temperature=c(x2),Max_temperature=c(x3),
                  log_Precipitation=c(log_x4),log_Total_population=c(log_x5),log_Urban=c(log_x6),
                  log_Rural=c(log_x7), Population_density=c(x8))



## Need to install the following package to produce pairwise plot ##
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
pdf(file="Pair.pdf")

chart.Correlation(data, histogram = TRUE, method = "pearson")
dev.off()

## Fitting Poisson and NB Regression Model ##

library(MASS)
m1<-glm(y~x1+x2+x3+log_x4+log_x5+log_x6+log_x7+x8, family=poisson)
summary(m1)

## Goodness-of-fit of Poisson Regression ##
## Total number of observations=m1$df.null+1 ##

aic_n_poiss<-m1$aic/(m1$df.null+1) 
aic_n_poiss

## Pearson Residual ##
rss1<-sum(residuals(m1,type="pearson")^2)
rss1
df<- m1$df.residual
df
rss1
chisq.p.value <- pchisq(deviance(m1), df.residual(m1), lower = F)
chisq.p.value

## Dispersion=(Pearson_Squared)/df
rss1/df

## Psedo-R2 ##
pR2<-1 - m1$deviance /m1$null.deviance
pR2

m2<-glm.nb(y~x1+x2+x3+log_x4+log_x5+log_x6+log_x7+x8)
summary(m2)

## Goodness-of-fit of NB Regression ##
## Total number of observations=m1$df.null+1 ##

aic_n_nb<-m2$aic/(m2$df.null+1) 
aic_n_nb


## Pearson Residual ##
rss2<-sum(residuals(m2,type="pearson")^2)
df2<- m2$df.residual
df2
rss2
## Dispersion=(Pearson_Squared)/df
rss2/df2
chisq.p.value <- pchisq(deviance(m2), df.residual(m2), lower = F)
chisq.p.value

summary(m2)



coef(m2)
## Incidence Rate Ratio ##
exp(coef(m2))

confint(m2)
## Confidence Interval for IRR ##
exp(confint(m2))

## Psedo-R2 ##
pR2<-1 - m2$deviance /m2$null.deviance
pR2

plot(m2)








































