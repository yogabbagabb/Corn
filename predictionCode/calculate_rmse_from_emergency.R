require(lme4)
require(splines)
require(magrittr)


calculateRMSE = function(yield_prediction_csv,rmse_csv)
{
    # In[7]:

    results <- read.csv(yield_prediction_csv)

    firstModelIndex <- 8
    model_names <- colnames(results[firstModelIndex:length(colnames(results))])
    lastModelIndex <- firstModelIndex + length(model_names) - 1


    numberYears <- 14
    model_rmse_mat <- matrix(, nrow = numberYears, ncol = length(model_names))

    lastModelIndex <- firstModelIndex + length(model_names) - 1

    for (i in 1:numberYears){
        print(i)
        test.year = year[pred.year[i]]
        #train.year = year[-pred.year[i]]
        yearIndex <- 2
        data.test = results[which(results[, yearIndex] %in% test.year),]
        for (j in firstModelIndex:lastModelIndex)
        {
            indexInModelNames <- j - firstModelIndex + 1
            model_string <- (model_names[indexInModelNames])
            data.test = data.test[!is.na(data.test[,model_string]),]
            data.test = data.test[!is.na(data.test[,"yield_rainfed"]),]
            model_rmse_mat[i,indexInModelNames] <- RMSE(data.test$"yield_rainfed", data.test[,model_string])
        }
    }

    df <- data.frame(model_rmse_mat)
    colnames(df) <- model_names
    write.csv(df, rmse_csv)
    print(df)
    print(apply(df,2,median))
}
