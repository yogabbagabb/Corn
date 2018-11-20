# This function was never finished.
require(cpr)



A = read.csv("Cross_Validation_R_Python_func_crop_model/func_model_dataset")
getKnots <- function(predicNames, yearsToExclude)
{
    A <- A[!is.na(A$precip5),]
    A <- A[!is.na(A$evi5),]
    A <- A[!is.na(A$vpdave5),]
    A <- A[(A$corn_percent > 0.001),]

    for (i in 1:length(predicNames))
    {
        B <- A[A$year != yearsToExclude[[i]],]
        formulaString <- paste0("yield_rainfed ~ bsplines(", predicNames[[i]], ", df =54)")
        cpr_run <- do.call("cp", list(as.formula(formulaString), data=B))
        models <- cpr(cpr_run)
        print(models[[4]]$xi)
    }
    
}

getKnots(c("precip5","precip6","precip7","precip8","precip9"), c("2003","2007","2003","2007","2008"))

# Four knots
#[1]   4.839189   4.839189   4.839189   4.839189  31.333454  36.751225
 #[7] 222.402258 369.271047 369.271047 369.271047 369.271047
 #[1]   4.030612   4.030612   4.030612   4.030612  35.183753  40.656778
 #[7]  46.059083 442.614667 442.614667 442.614667 442.614667
 #[1]   0.4402941   0.4402941   0.4402941   0.4402941  23.1719770  28.6630879
 #[7]  32.9243543 371.4069995 371.4069995 371.4069995 371.4069995
 #[1]   0.7258461   0.7258461   0.7258461   0.7258461  37.0651413  42.6610796
 #[7] 164.7836315 325.2545298 325.2545298 325.2545298 325.2545298
 #[1]   0.02927711   0.02927711   0.02927711   0.02927711   7.81652423
 #[6]  19.21079385  24.19948326 348.20884137 348.20884137 348.20884137
#[11] 348.20884137
