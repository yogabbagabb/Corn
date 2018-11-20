
rm(list=ls())
require(splines)

# install.packages("splines")
# #Set values for State ANSI
# IA <- 19;IL <- 17;IN <- 18;MN <- 27;OH <- 39;WI <- 55;MO <- 29;NB <- 31;KS <- 20;SD <- 46

# #select 10 states region
# ten_states <- c(IA, IL, IN, MN, OH, WI, MO, NB, KS, SD)


# # setwd("../Albert_Crop")
# climate.EVI <- read.csv("../Albert_Crop/climate.EVImonthly.csv")


# #set mydata as a subset of the dataset which has percent harvest > 2%
# mydata = climate.EVI[which(climate.EVI$PercentHarvest > 0.02),]

# #set FIPS and State ANSI as factors
# mydata$FIPS = as.factor(mydata$FIPS); mydata$State.ANSI = as.factor(mydata$State.ANSI)

# #rainfed subset, select only counties that have Rainfed Area > 10000  (or whatever number you want)
# rainfed.subset <- mydata[which(mydata$Area.rain > 10000), ]

# climate.EVI <- read.csv("../Albert_Crop/climate.EVImonthly.csv")

IA <- 19;IL <- 17;IN <- 18;MN <- 27;OH <- 39;WI <- 55;MO <- 29;NB <- 31;KS <- 20;SD <- 46
three_states = c(IL,IN,IA)
seven_states <- c(IA, IL, IN, MN, OH, WI, MO)
ten_states <- c(IA, IL, IN, MN, OH, WI, MO, NB, KS, SD)
mydata = climate.EVI[which(climate.EVI$PercentHarvest > 0.01),];mydata$FIPS = as.factor(mydata$FIPS); mydata$State.ANSI = as.factor(mydata$State.ANSI)
#mydata = mydata[mydata$State.ANSI %in% seven_states,]


# year.fit <- lm(yield ~ poly(year,2,raw=T), data=mydata)

year.fit <- lm(yield ~ year, data=mydata) # Use linear trends

yearly.means <- predict(year.fit,mydata)
yc <- mydata
yc$yield.cor <- yc$yield - yearly.means
subset = yc

# IRR.lm.rmse.test = rep(NA,15);IRR.test.r2.cor2 = rep(NA,15)
# rain.lm.rmse.test = rep(NA,15);rain.test.r2.cor2 = rep(NA,15)
# Actual.yield = rep(NA, 15)
# Predicted.yield = rep(NA,15)

# sequential = matrix(nrow=20,ncol=6)
year = seq(from = 1981, to = 2015);pred.year = seq(from=21, to=35)
train_region <- ten_states
test_region <- ten_states

i=15

test.year = year[pred.year[i]]
#train.year = year[-pred.year[i]]
train.year = year[1:(pred.year[i])]
data.train = subset[which(subset[, 1] %in% train.year & subset$State.ANSI %in% train_region),]
data.test = subset[which(subset[, 1] %in% test.year & subset$State.ANSI %in% test_region),]
#   original.test = subset[which(subset[,1] %in% test.year & subset$State.ANSI %in% test_region),]


# lm.fit <- lm(yield.cor ~ 
#                 # + bs(degree.day5, knots = c(200,250,300,350,400), degree = 1)
#                 # + bs(degree.day6, knots = c(300,350,400,450,500), degree = 1)  
#                  + bs(degree.day7, knots = c(350,400,450,500,550), degree = 1)
#                  + bs(degree.day8, knots = c(350,400,450,500,550), degree = 1)
#                  + bs(degree.day9, knots = c(200,250,300,350,400), degree = 1)
#                  + bs(mvpd5, knots = c(6,7,8,9,10), degree=1)
# #                 + bs(mvpd6, knots = c(6,7,8,9,10), degree=1)
#                  + bs(mvpd7, knots = c(6,7,8,9,10), degree=1)
#                  + bs(mvpd8, knots = c(6,7,8,9,10), degree=1)
# #                 + bs(mvpd9, knots = c(6,7,8,9,10), degree=1)
#                + bs(precip5, knots = c(100,200,300), degree = 1)
#                + bs(precip6, knots = c(100,200,300), degree = 1)
#               + bs(precip7, knots = c(100,200,300), degree = 1)
#               + bs(precip8, knots = c(100,200,300), degree = 1)
#                  + FIPS
#                  ,data = data.train)


# This can basically reproduce the heavry rainfall impact 
# lm.fit <- lm(yield.cor ~ 
#                  + bs(degree.day7, knots = c(350,400,450,500,550), degree = 1)
#                  + bs(degree.day8, knots = c(350,400,450,500,550), degree = 1)
#                  + bs(degree.day9, knots = c(200,250,300,350,400), degree = 1)
#                 + bs(mvpd5, knots = c(6,7,8,9,10), degree=1)
#                  + bs(mvpd7, knots = c(6,7,8,9,10), degree=1)
#                  + bs(mvpd8, knots = c(6,7,8,9,10), degree=1)
#                  + bs(precip5, knots = c(100,200,300), degree = 1)
#                + bs(precip6, knots = c(100,200,300), degree = 1)
#               + bs(precip7, knots = c(100,200,300), degree = 1)
#               + bs(precip8, knots = c(100,200,300), degree = 1)
#                  + FIPS
#                  ,data = data.train)

# ~ degree.day7 + degree.day8 + degree.day9 
#              + mvpd5 + mvpd7 + mvpd8

#              + bs(mvpd5, knots = c(6,7,8,9,10), degree=1)
#              + bs(mvpd7, knots = c(6,7,8,9,10), degree=1)
#              + bs(mvpd8, knots = c(6,7,8,9,10), degree=1)

lm.fit <- lm(yield.cor ~ 
             degree.day7 + degree.day8 + degree.day9 
             + mt5 + mt6 + mt7 + mt8
             + bs(precip5, knots = c(100,200,300), degree = 1)
             + bs(precip6, knots = c(100,200,300), degree = 1)
             + bs(precip7, knots = c(100,200,300), degree = 1)
             + bs(precip8, knots = c(100,200,300), degree = 1)
             + FIPS
                 ,data = data.train)


require(car)
Anova(lm.fit)



for (i in 1:35){
   test.year <- year[i]
   assign(paste0("data.test",test.year), subset[which(subset[, 1] %in% test.year & subset$State.ANSI %in% test_region),])
   assign(paste0("lm.pred",test.year), rep(NA,dim(get(paste0("data.test",test.year)))[1]))
   assign(paste0("lm.pred",test.year), predict(lm.fit,get(paste0("data.test",test.year)))) #+ yearly.means[which(subset[, 1] %in% test.year & subset$State.ANSI %in% test_region)])
   
}


Yan <- rbind.data.frame(data.test1981,data.test1982,data.test1983,data.test1984,data.test1985,data.test1986,data.test1987,data.test1988, data.test1989, data.test1990,
                           data.test1991,data.test1992,data.test1993,data.test1994,data.test1995,data.test1996,data.test1997,data.test1998, data.test1999,
                           data.test2000,data.test2001,data.test2002,data.test2003,data.test2004,data.test2005,data.test2006,data.test2007,data.test2008, data.test2009, data.test2010,
                           data.test2011, data.test2012, data.test2013, data.test2014, data.test2015)

predictions <- c(lm.pred1981,lm.pred1982,lm.pred1983,lm.pred1984,lm.pred1985,lm.pred1986,lm.pred1987,lm.pred1988, lm.pred1989, lm.pred1990,
                                lm.pred1991,lm.pred1992,lm.pred1993,lm.pred1994,lm.pred1995,lm.pred1996,lm.pred1997,lm.pred1998, lm.pred1999,
                                lm.pred2000,lm.pred2001,lm.pred2002,lm.pred2003,lm.pred2004,lm.pred2005,lm.pred2006,lm.pred2007,lm.pred2008, lm.pred2009, lm.pred2010,
                                lm.pred2011, lm.pred2012, lm.pred2013, lm.pred2014, lm.pred2015)

Yan.data <- data.frame(Yan,predictions)

lm.fit

data.train

# Yan.data %in% test.year & subset$State.ANSI

Yan.data$predictions[which(Yan.data$FIPS=='17019')]


# subset(Yan.data, select = c("year","FIPS","yield.cor", "predictions"))[which(Yan.data$FIPS==17019)]

Yan.data

yield_prediction <- subset(Yan.data, select = c("year","FIPS","yield.cor", "predictions"))
write.csv(yield_prediction, "../data/yield_predicition_reproduced.csv")

yield_prediction_ten <- subset(Yan.data, select = c("year","FIPS","yield.cor", "predictions"))
write.csv(yield_prediction_ten, "../data/yield_predicition_reproduced_tenstates.csv")

yield_prediction_ten_linear_trend <- subset(Yan.data, select = c("year","FIPS","yield.cor", "predictions"))
write.csv(yield_prediction_ten_linear_trend, "../data/yield_predicition_reproduced_tenstates_linear_trend.csv")

yield_prediction_test <- subset(Yan.data, select = c("year","FIPS","yield.cor", "predictions"))
write.csv(yield_prediction_test, "../data/yield_predicition_reproduced_test.csv")
