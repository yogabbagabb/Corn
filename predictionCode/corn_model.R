# This file calculates predicted_yield_rainfed 
# It does not calculate predicted_yield_irr or predicted_yield

# It calculates RMSE
# It does not calculate R^2


rm(list=ls())
require(lme4)
require(nlme)
require(splines)
require(magrittr)
year = seq(from = 1981, to = 2016);pred.year = seq(from=23, to=36)


RMSE = function(m, o){
sqrt(mean((m - o)^2))
}



newRMSE = function(m, o,length){
sqrt(sum((m - o)^2)/length)
}



calculateRMSE = function(yield_prediction_csv,rmse_csv)
{

    results <- read.csv(yield_prediction_csv)

    # This is the index of the first model's predictions in the dataframe called results
    firstModelIndex <- 8
    model_names <- colnames(results[firstModelIndex:length(colnames(results))])
    lastModelIndex <- firstModelIndex + length(model_names) - 1


    # We are performing LOO cross validation from 2003 to 2016, 14 years
    numberYears <- 14
    model_rmse_mat <- matrix(, nrow = numberYears, ncol = length(model_names))

    lastModelIndex <- firstModelIndex + length(model_names) - 1

    for (i in 1:numberYears){
        print(i)
        test.year = year[pred.year[i]]
        yearIndex <- 2
        data.test = results[which(results[, yearIndex] %in% test.year),]
        for (j in firstModelIndex:lastModelIndex)
        {
            indexInModelNames <- j - firstModelIndex + 1
            model_string <- (model_names[indexInModelNames])
            data.test.copy = data.test[!is.na(data.test[,model_string]),]
            data.test.copy = data.test.copy[!is.na(data.test.copy[,"yield_rainfed"]),]
            model_rmse_mat[i,indexInModelNames] <- RMSE(data.test.copy$"yield_rainfed", data.test.copy[,model_string])
        }
    }

    df <- data.frame(model_rmse_mat)
    colnames(df) <- model_names
    write.csv(df, rmse_csv)
    print(df)
    print(apply(df,2,median))
    print(apply(df,2,mean))
}






initialize = function()
{

    mydata <- read.csv("../dataFiles/processed_Corn_model_data.csv")
    # Uncomment the following if you want to normalize all the columns but
    # year, State, FIPS, yield_rainfed, yield_rainfed_ana, yield and soy_percent

    #ind <- sapply(mydata, is.numeric)
    #ind["year"] <- FALSE
    #ind["State"] <- FALSE
    #ind["FIPS"] <- FALSE
    #ind["yield_rainfed"] <- FALSE
    #ind["yield_rainfed_ana"] <- FALSE
    #ind["yield"] <- FALSE
    #ind["soy_percent"] <- FALSE
    #mydata[ind] <- scale(mydata[ind])
    


    mydata$FIPS = as.factor(mydata$FIPS)
    mydata$State = as.factor(mydata$State)

    # Specify the csv where we will save the prediction frames, the statistics frames (ie the dataframe
    # containing the RMSE over the past 16 years).
    # Specify the model formulas (ie the models)
    yield_prediction_csv_1 <- "./predictionFrames/vpd_evi.csv"
    rmse_csv_1 <- "./predictionFrames/vpd_evi_rmse.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) + FIPS")

    model_names_1 <- c("global_regression_vpdave_evi"
                     ,"uncorrelated_slope_intercept_vpdave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_evi_both")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer")

    #For the model configurations listed above, list the names of models, which fitting functions they use,
    # whether they have SVD issues, use FIPS, use EVI, and use EVI LSTMAX
    svd_issue_1 <- c("N","N", "N", "N")
    uses_FIPS_1 <- c("Y","Y", "Y","Y")
    uses_evi_1 <- c("Y", "Y", "Y", "Y")
    uses_lstmax_1 <- c("N","N", "N", "N")




    # Pack all the components of a batch into a list. By "component", we refer to the objects each storing
    # particular attributes of the model configurations within a batch.
    yield_prediction_csv_list <- list(yield_prediction_csv_1)
    rmse_csv_list <- list(rmse_csv_1)
    model_formulas_list <- list(model_formulas_1)
    model_names_list <- list(model_names_1)
    fitting_functions_list <- list(fitting_functions_1)
    svd_issue_list <- list(svd_issue_1)
    uses_evi_list <- list(uses_evi_1)
    uses_lstmax_list <- list(uses_lstmax_1)
    uses_FIPS_list <- list(uses_FIPS_1)



    number_batches <- length(yield_prediction_csv_list)


    for (batch_index in (1:number_batches))
    {
        # Extract the components of a batch
        yield_prediction_csv <- yield_prediction_csv_list[[batch_index]]
        rmse_csv <- rmse_csv_list[[batch_index]]
        model_formulas <- model_formulas_list[[batch_index]]
        model_names <- model_names_list[[batch_index]]
        fitting_functions <- fitting_functions_list[[batch_index]]
        svd_issues <- svd_issue_list[[batch_index]]
        uses_evi <- uses_evi_list[[batch_index]]
        uses_lstmax <- uses_lstmax_list[[batch_index]]
        uses_FIPS <- uses_FIPS_list[[batch_index]]

        predictions <- vector("list", length(model_formulas))

        if (length(model_formulas) != length(model_names))
        {
            stop("The length of model_formulas != length of model_names")
        }

        for (model_index in 1:length(model_formulas))
        {
            startTime <- Sys.time()
            print(model_names[model_index])
            for (yearIndex in 1:14){

                print("The Year Index (from 1 to 14 (ie 2003 to 2016)) is:")
                print(yearIndex)
                test.year = year[pred.year[yearIndex]]
                data.train = mydata[!(mydata$"year" %in% year[pred.year[yearIndex]]),]


                # Limit the test data to those data points belonging to the test year
                data.test = mydata[mydata$"year" %in% test.year,]

                # Filter data out using the attributes of the components.

                corn_percent_min <- 0

                if (svd_issues[model_index] == "Y")
                {
                    corn_percent_min <- 0.001
                }

                data.train <- data.train[data.train$'corn_percent' > corn_percent_min,]
                print("The dimensions of training data are:")
                print(dim(data.train))
                data.test <- data.test[data.test$'corn_percent' > corn_percent_min,]

                if (uses_evi[model_index] == "Y")
                {
                    data.train <- data.train[!is.na(data.train$"evi5"),]
                    data.test <- data.test[!is.na(data.test$"evi5"),]
                }

                if (uses_lstmax[model_index] == "Y")
                {
                    data.train <- data.train[!is.na(data.train$"lstmax5"),]
                    data.test <- data.test[!is.na(data.test$"lstmax5"),]
                }

                # tave5 is null iff precip5 is null iff tave5 is null
                data.train <- data.train[!is.na(data.train$'tave5'),]
                data.test <- data.test[!is.na(data.test$'tave5'),]



                model_function <- NULL

                if (fitting_functions[model_index] == "lm")
                {
                    model_function <- lm(as.formula(model_formulas[model_index]), data=data.train)

                }
                else if (fitting_functions[model_index] == "lmer")
                {
                    model_function <- lmer(as.formula(model_formulas[model_index]), data=data.train, control = lmerControl(optimizer ="Nelder_Mead"))
                }


                if (uses_FIPS[model_index] == "Y")
                {
                    non_na_rainfed_entries <- data.train[!(is.na(data.train$'yield_rainfed')),]
                    data.test <- data.test[data.test$"FIPS" %in% non_na_rainfed_entries$"FIPS",]
                }



                # Save diagnostics from the model for year 14 (ie 2016)
                #if (yearIndex == 14)
                #{
                    #print("Printing some diagnostics for 2016")
                    #s <- capture.output(summary(model_function))
                    #coeff <- capture.output(coef(model_function))
                    #coeff_mean <- capture.output(coef(summary(model_function)))
                    #csv_name <- paste0(yield_prediction_csv)
                    #csv_name <- substr(csv_name, 3, nchar(csv_name)) 

                    #fileToSaveTo <- paste0('./coefficientFiles/coefficients_', csv_name,'_', model_names[model_index],'.txt')
                    #write(s, fileToSaveTo, append=TRUE)
                    #write("\n_________________\n",, append=TRUE)
                    #write(coeff, fileToSaveTo, append=TRUE)
                    #write("\n_________________\n", fileToSaveTo, append=TRUE)
                    #write(coeff_mean, fileToSaveTo, append=TRUE)
                    #theFile <-  paste0(model_names[model_index], "%03d.png")
                    #png(filename=theFile)
                    #plot(model_function,ask=FALSE)
                    #dev.off()
                #}

                assign(paste0("data.test",test.year), data.test)
                assign(paste0("func.pred",test.year), rep(NA,dim(get(paste0("data.test",test.year)))[1]))
                assign(paste0("func.pred",test.year), predict(model_function,get(paste0("data.test",test.year))))

            }


            # Combine the testing data frames into one
            testData <- rbind.data.frame(data.test2003,data.test2004,data.test2005,data.test2006,data.test2007,data.test2008, data.test2009, data.test2010, data.test2011, data.test2012, data.test2013, data.test2014, data.test2015, data.test2016)

            # Combine the prediction data frames into one
            predictions[[model_index]] <- c(func.pred2003,func.pred2004,func.pred2005,func.pred2006,func.pred2007,func.pred2008, func.pred2009, func.pred2010, func.pred2011, func.pred2012, func.pred2013, func.pred2014, func.pred2015, func.pred2016)
            temp <- data.frame(predictions[[model_index]])
            # Temporarily save the data frame for model_names[[model_index]] as its own csv file
            # in case some trial in the batch aborts
            write.csv(data.frame(temp, testData), paste0(model_names[[model_index]], ".csv"))

            #Print the difference between end time and start time to get the total time needed for perform
            # LOO for the model from 2003 to 2016
            endTime <- Sys.time()
            print(endTime - startTime)


        }


        predictionsOverAllModels <- data.frame(predictions)
        colnames(predictionsOverAllModels) <- model_names
        predictionDataFrame <- data.frame(testData, predictionsOverAllModels)


        basic_data <- c("year","State","FIPS","yield_ana", "yield_rainfed", "area_rainfed")
        desired_data <- c(basic_data, model_names)
        yield_prediction <- subset(predictionDataFrame, select = desired_data)

        trend_rainfed <- lm(yield_rainfed ~ year, data=mydata)
        yearly.means <- predict(trend_rainfed, yield_prediction)
        for (i in 1:length(model_names))
        {
            yield_prediction[,model_names[[i]]]  <- yield_prediction[,model_names[[i]]] + yearly.means
        }


        write.csv(yield_prediction, yield_prediction_csv)
        for (j in 1:length(model_names))
        {
            file.remove(paste0(model_names[[model_index]], ".csv"))
        }
        calculateRMSE(yield_prediction_csv, rmse_csv)

    }
}

# Main method

options(warn=1)
initialize()


