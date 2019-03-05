## import libraries 
library(MASS)       #regression
library(ggplot2)    #plot
library(broom)      #for R markdown displays
library(gmodels)    #plotting

#import data set
data <- read.csv("cwns2012.csv", sep = ",")

#transform data to get skewed data.
data$LOG_TOTAL_OFFICIAL_NEED <- log10(data$TOTAL_OFFICIAL_NEED)    #using base10 tranformation
data$RES_BURDEN <- data$TOTAL_OFFICIAL_NEED / max(data$PRES_N_RES_REC_COLLCTN / data$PRES_N_RES_REC_TRTM)
data$LOG_RES_BURDEN <- log10(data$RES_BURDEN)
data$LOG_MEDINC09 <- log10(data$MEDINC09)
data$LOG_MEDINC69 <- log10(data$MEDINC69)
data$LOG_MEDINC79 <- log10(data$MEDINC79)
data$LOG_MEDINC89 <- log10(data$MEDINC89)
data$LOG_MEDINC99 <- log10(data$MEDINC99)
data$LOG_POP10 <- log10(data$POP10)
data$LOG_POP00 <- log10(data$POP00)
data$LOG_POP90 <- log10(data$POP90)
data$LOG_POP80 <- log10(data$POP80)

########################################
#    Boxplots to check if the data has #
#    been corrected                    #
########################################

par(mfrow = c(3,2))
boxplot(data$LOG_TOTAL_OFFICIAL_NEED, main ="Log of Total Official Need")
boxplot(data$TOTAL_OFFICIAL_NEED, main = "Total Official Need")
boxplot(data$LOG_MEDINC09, main = "Log of Median Income in 2009")
boxplot(data$MEDINC09, main = "Median Income in 2009")
boxplot(data$LOG_POP10, main = "Log of Population in 2009")
boxplot(data$POP10, main = "Population in 2009")


####It seems that the transformation squeezes more data and cuts down the number of outliers#######
###We might be justified in using the 



###################################################################
#             BIVARIATE REGRESSIONS AND SCATTERPLOTS              #
###################################################################




###################################################################
#            MULTIVARIATE REGRESSIONS AND VARIABLE SELECTION      #
###################################################################








