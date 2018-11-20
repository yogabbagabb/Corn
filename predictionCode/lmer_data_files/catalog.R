model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8"
                    ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) "
                    ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) "
                    ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) ")

model_names_1 <- c("global_regression_vpdave_evi"
                 ,"uncorrelated_slope_intercept_vpdave_w_evi"
                 ,"uncorrelated_slope_intercept_evi_w_vpdave"
                 ,"uncorrelated_slope_intercept_vpdave_evi_both")

model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8"
                    ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) "
                    ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) "
                    ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) ")

model_names_1 <- c("global_regression_vpdave_evi"
                 ,"uncorrelated_slope_intercept_vpdave_w_evi"
                 ,"uncorrelated_slope_intercept_evi_w_vpdave"
                 ,"uncorrelated_slope_intercept_vpdave_evi_both")

    #____________
    yield_prediction_csv_1 <- "lmer_data_files/slowness_2.csv"
    rmse_csv_1 <- "lmer_data_files/slowness_rmse_2.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ (1 | State/FIPS) + tave5 + tave6  + (tave5  + tave6 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + tave5  + precip5 + (tave5  + precip5 | State/FIPS)")
    model_names_1 <- c("AA","BB")    
    fitting_functions_1 <- c("lmer", "lmer")
    svd_issue_1 <- c("N","N")
    uses_FIPS_1 <- c("Y","Y")
    uses_evi_1 <- c("N","N")

    #First model takes 1.32284 hours
    # Second model takes 1.498024 hours
    #____________

    yield_prediction_csv_1 <- "lmer_data_files/slowness_2.csv"
    rmse_csv_1 <- "lmer_data_files/slowness_rmse_2.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ (1 | State/FIPS) + tave5 + (tave5 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + I(tave5^2) + (I(tave5^2)  | State/FIPS)")
    model_names_1 <- c("AA","BB")    
    fitting_functions_1 <- c("lmer", "lmer")
    svd_issue_1 <- c("N","N")
    uses_FIPS_1 <- c("Y","Y")
    uses_evi_1 <- c("N","N")

    # Running the first two trials will distinguish whether the slowness is caused by the type of term or number of terms





     The models below took a long time to run -- long enough that running them was infeasible
    ("yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 + I(vpdave5^2) + evi5  | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 + I(vpdave6^2) + evi6  | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 + I(vpdave7^2) + evi7  | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 + I(vpdave8^2) + evi8  | State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ", "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) | State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ") 
    #___


#The first 4 are located here: vpd_evi_tave_nested_rmse_loo_square.csv              
#The final model is located here: vpd_evi_tave_nested_rmse_loo_square_2.csv 
    model_formulas_1 <- c("yield_rainfed_ana ~ FIPS + vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) +  vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) +  tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) "
                          
                          ,"yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) +  vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) +  tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ",
                          "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (vpdave5 | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (vpdave6 | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (vpdave7 | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (vpdave8 | State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ",
                          "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 | State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ", 
    "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 + I(vpdave5^2) | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 + I(vpdave6^2) | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 + I(vpdave7^2) | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 + I(vpdave8^2)| State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ")



__
    yield_prediction_csv_1 <- "lmer_data_files/tave_vpd_evi_yield_loo_square.csv"
    rmse_csv_1 <- "lmer_data_files/tave_vpd_evi_rmse_loo_square.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ FIPS + tave5 + I(tave5^2) + evi5 + I(evi5^2) + tave6 + I(tave6^2) + evi6 + I(evi6^2) + tave7 + I(tave7^2) + evi7 + I(evi7^2) +  tave8 + I(tave8^2) + evi8 + I(evi8^2) +  vpd6 + I(vpd6^2) + vpd7 + I(vpd7^2) + vpd8 + I(vpd8^2) + vpd9 + I(vpd9^2) "
                          
                          ,"yield_rainfed_ana ~ tave5 + I(tave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + tave6 + I(tave6^2) + evi6 + I(evi6^2) + tave7 + I(tave7^2) + evi7 + I(evi7^2) +  tave8 + I(tave8^2) + evi8 + I(evi8^2) +  vpd6 + I(vpd6^2) + vpd7 + I(vpd7^2) + vpd8 + I(vpd8^2) + vpd9 + I(vpd9^2) ",
                          "yield_rainfed_ana ~ tave5 + I(tave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (tave5 | State/FIPS) + tave6 + I(tave6^2) + evi6 + I(evi6^2) + (tave6 | State/FIPS) + tave7 + I(tave7^2) + evi7 + I(evi7^2) + (tave7 | State/FIPS) + tave8 + I(tave8^2) + evi8 + I(evi8^2) + (tave8 | State/FIPS)  + vpd6 + I(vpd6^2) + vpd7 + I(vpd7^2) + vpd8 + I(vpd8^2) + vpd9 + I(vpd9^2) ",
                          "yield_rainfed_ana ~ tave5 + I(tave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + tave5 | State/FIPS) + tave6 + I(tave6^2) + evi6 + I(evi6^2) + (0 + tave6 | State/FIPS) + tave7 + I(tave7^2) + evi7 + I(evi7^2) + (0 + tave7 | State/FIPS) + tave8 + I(tave8^2) + evi8 + I(evi8^2) + (0 + tave8 | State/FIPS)  + vpd6 + I(vpd6^2) + vpd7 + I(vpd7^2) + vpd8 + I(vpd8^2) + vpd9 + I(vpd9^2) ", 
    "yield_rainfed_ana ~ tave5 + I(tave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + tave5 + I(tave5^2) | State/FIPS) + tave6 + I(tave6^2) + evi6 + I(evi6^2) + (0 + tave6 + I(tave6^2) | State/FIPS) + tave7 + I(tave7^2) + evi7 + I(evi7^2) + (0 + tave7 + I(tave7^2) | State/FIPS) + tave8 + I(tave8^2) + evi8 + I(evi8^2) + (0 + tave8 + I(tave8^2)| State/FIPS)  + vpd6 + I(vpd6^2) + vpd7 + I(vpd7^2) + vpd8 + I(vpd8^2) + vpd9 + I(vpd9^2) ")


    #________________________
    yield_prediction_csv_1 <- "lmer_data_files/vpd_precip_poly_and_evi_poly_verification"
    rmse_csv_1 <- "lmer_data_files/vpd_precip_poly_and_evi_poly_rmse_verification"


    model_formulas_1 <- c("yield.cor ~ vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + precip6 + I(precip6^2) + precip7 + I(precip7^2) + precip8 + I(precip8^2) + precip9 + I(precip9^2)", 
                          "yield.cor ~  evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + evi9 + I(evi9^2)")

    model_names_1 <- c("vpd_p_poly_verification", "evi_poly_verification")
    fitting_functions_1 <- c("lm", "lm")

    #________________________
    yield_prediction_csv_1 <- "lmer_data_files/Tgs_linear_verification"
    rmse_csv_1 <- "lmer_data_files/Tgs_linear_rmse_verification"

    model_formulas_1 <- c("yield_rainfed_ana ~ tave56789 + precip56789 + FIPS")

    model_names_1 <- c("Tgs_linear_verification")
    fitting_functions_1 <- c("lm")
    svd_issue_1 <- c("N")
    uses_evi_1 <- c("N")


    #_____________

    yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_poly_verification"
    rmse_csv_1 <- "lmer_data_files/vpd_spline_evi_poly_rmse_verification"


    model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")

    model_names_1 <- c("vpd_spline_evi_poly_verification")
    fitting_functions_1 <- c("lm")
    svd_issue_1 <- c("Y")
    uses_evi_1 <- c("Y")
    uses_FIPS_1 <- c("Y")

    #_____________

    yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_poly_aahan"
    rmse_csv_1 <- "lmer_data_files/vpd_spline_evi_poly_rmse_aahan"


    model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, df =5, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=16, 
knots = c(4.030612,4.030612,4.030612,4.030612,35.183753,40.656778,46.059083,251.631974,442.614667,442.614667,442.614667,442.61466)
 , degree=4) + bs(precip7,df=16, knots = c(0.4402941,0.4402941,0.4402941,0.4402941,23.1719770,28.6630879,32.9243543,48.7517076,371.4069995,371.4069995,371.4069995,371.406999) , degree=4) + bs(precip8,df=16, 
knots = c(0.7258461,0.7258461,0.7258461,0.7258461,37.0651413,42.6610796,130.9042201,164.7836315,325.2545298,325.2545298,325.2545298,325.254529)

, degree=4) + bs(precip9,df=17, 

knots = c(0.02927711,0.02927711,0.02927711,0.02927711,7.81652423,19.21079385,24.19948326,36.65716774,348.20884137,348.20884137,348.20884137,348.2088413)

, degree=4) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")

    model_names_1 <- c("vpd_spline_evi_poly_aahan")
    fitting_functions_1 <- c("lm")
    svd_issue_1 <- c("Y")
    uses_evi_1 <- c("Y")
    uses_FIPS_1 <- c("Y")

    #_____________________


    yield_prediction_csv_1 <- "lmer_data_files/tave_spline_evi_poly_verification"
    rmse_csv_1 <- "lmer_data_files/tave_spline_evi_poly_rmse_verification"


    model_formulas_1 <- c("yield_rainfed_ana ~ bs(tave6, df=3, knots=c(20,23), degree=1) + bs(tave7, df=3, knots=c(22,26), degree=1) + bs(tave8, df=3, knots=c(20,24), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")


    model_names_1 <- c("tave_spline_evi_poly_verification")
    fitting_functions_1 <- c("lm")
    svd_issue_1 <- c("Y")
    uses_evi_1 <- c("N")

    #_____________________


    yield_prediction_csv_1 <- "lmer_data_files/lstmax_spline_evi_poly_verification"
    rmse_csv_1 <- "lmer_data_files/lstmax_spline_evi_poly_rmse_verification"



    model_formulas_1 <- c("yield_rainfed_ana ~ bs(lstmax6, df=3, knots = c(28,34), degree=1) + bs(lstmax7, df=4, knots = c(26,31,35), degree=1)+ bs(lstmax8, df=3, knots = c(25,28), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")


    model_names_1 <- c("lstmax_spline_evi_poly_verification")
    fitting_functions_1 <- c("lm")
    svd_issue_1 <- c("Y")
    uses_evi_1 <- c("N")
    #_____________________________

    #The following csv contains the model formulas below
    yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed"

      "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS)+ (0 + evi5 + evi6 + evi7 + evi8 + evi9 | State/FIPS) + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)","yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS) + (0 + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) | State/FIPS)"


    #The two model formulas below could not be run (they took far too much time -- slowness)
    model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State) + (0 + evi5 + evi6 + evi7 + evi8 + evi9 | State) + FIPS +  I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)","yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State) + (0 + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) | State) + FIPS")

    model_formulas_1 <- c("yield_rainfed_ana ~ (bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) | State) + (1 | State) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")





    #______________________
    yield_prediction_csv_1 <- "lmer_data_files/vpd_evi.csv"
    rmse_csv_1 <- "lmer_data_files/vpd_evi_rmse.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) + FIPS")

    model_names_1 <- c("global_regression_vpdave_evi"
                     ,"uncorrelated_slope_intercept_vpdave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_evi_both")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer")
    svd_issue_1 <- c("N","N", "N", "N")
    uses_FIPS_1 <- c("Y","Y", "Y","Y")
    uses_evi_1 <- c("Y", "Y", "Y", "Y")



    yield_prediction_csv_2 <- "lmer_data_files/vpd_tave.csv"
    rmse_csv_2 <- "lmer_data_files/vpd_tave_rmse.csv"
    model_formulas_2 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + tave5 + tave6 + tave7 + tave8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + tave6 + (0 + vpdave6 | State) + vpdave7 + tave7 + (0 + vpdave7 | State) + vpdave8 + tave8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + vpdave5 + (1 |State) + (0 + tave5 | State) + tave6 + tave6 + (0 + tave6 | State) + tave7 + tave7 + (0 + tave7 | State) + tave8 + tave8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 + tave5 | State) + vpdave6 + tave6 + (0 + vpdave6 + tave6 | State) + vpdave7 + tave7 + (0 + vpdave7 + tave7 | State) + vpdave8 + tave8 + (0 + vpdave8 + tave8| State) + FIPS")

    model_names_2 <- c("global_regression_vpdave_tave"
                     ,"uncorrelated_slope_intercept_vpdave_w_tave"
                     ,"uncorrelated_slope_intercept_tave_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_tave_both")
    fitting_functions_2 <- c("lm", "lmer","lmer","lmer")
    svd_issue_2 <- c("N","N", "N", "N")
    uses_FIPS_2 <- c("Y","Y", "Y","Y")
    uses_evi_2 <- c("N","N", "N", "N")
    


    yield_prediction_csv_3 <- "lmer_data_files/vpd_precip.csv"
    rmse_csv_3 <- "lmer_data_files/vpd_precip_rmse.csv"
    model_formulas_3 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + precip5 + precip6 + precip7 + precip8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + precip6 + (0 + vpdave6 | State) + vpdave7 + precip7 + (0 + vpdave7 | State) + vpdave8 + precip8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + vpdave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 + precip5 | State) + vpdave6 + precip6 + (0 + vpdave6 + precip6 | State) + vpdave7 + precip7 + (0 + vpdave7 + precip7 | State) + vpdave8 + precip8 + (0 + vpdave8 + precip8| State) + FIPS")

    model_names_3 <- c("global_regression_vpdave_precip"
                     ,"uncorrelated_slope_intercept_vpdave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_precip_both")
    fitting_functions_3 <- c("lm", "lmer","lmer","lmer")
    svd_issue_3 <- c("N","N", "N", "N")
    uses_FIPS_3 <- c("Y","Y", "Y","Y")
    uses_evi_3 <- c("N","N", "N", "N")



    yield_prediction_csv_4 <- "lmer_data_files/tave_precip.csv"
    rmse_csv_4 <- "lmer_data_files/tave_precip_rmse.csv"
    model_formulas_4 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + precip5 + precip6 + precip7 + precip8 + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 | State) + tave6 + precip6 + (0 + tave6 | State) + tave7 + precip7 + (0 + tave7 | State) + tave8 + precip8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + tave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 + precip5 | State) + tave6 + precip6 + (0 + tave6 + precip6 | State) + tave7 + precip7 + (0 + tave7 + precip7 | State) + tave8 + precip8 + (0 + tave8 + precip8| State) + FIPS")

    model_names_4 <- c("global_regression_tave_precip"
                     ,"uncorrelated_slope_intercept_tave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_tave"
                     ,"uncorrelated_slope_intercept_tave_precip_both")
    fitting_functions_4 <- c("lm", "lmer","lmer","lmer")
    svd_issue_4 <- c("N","N", "N", "N")
    uses_FIPS_4 <- c("Y","Y", "Y","Y")
    uses_evi_4 <- c("N","N", "N", "N")



    yield_prediction_csv_5 <- "lmer_data_files/tave_evi.csv"
    rmse_csv_5 <- "lmer_data_files/tave_evi_rmse.csv"
    model_formulas_5 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 | State) + tave6 + evi6 + (0 + tave6 | State) + tave7 + evi7 + (0 + tave7 | State) + tave8 + evi8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + tave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 + evi5 | State) + tave6 + evi6 + (0 + tave6 + evi6 | State) + tave7 + evi7 + (0 + tave7 + evi7 | State) + tave8 + evi8 + (0 + tave8 + evi8| State) + FIPS")

    model_names_5 <- c("global_regression_tave_evi"
                     ,"uncorrelated_slope_intercept_tave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_tave"
                     ,"uncorrelated_slope_intercept_tave_evi_both")
    fitting_functions_5 <- c("lm", "lmer","lmer","lmer")
    svd_issue_5 <- c("N","N", "N", "N")
    uses_FIPS_5 <- c("Y","Y", "Y","Y")
    uses_evi_5 <- c("Y", "Y", "Y", "Y")



    yield_prediction_csv_6 <- "lmer_data_files/precip_evi.csv"
    rmse_csv_6 <- "lmer_data_files/precip_evi_rmse.csv"
    model_formulas_6 <- c("yield_rainfed_ana ~ precip5 + precip6 + precip7 + precip8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 | State) + precip6 + evi6 + (0 + precip6 | State) + precip7 + evi7 + (0 + precip7 | State) + precip8 + evi8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + precip5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 + evi5 | State) + precip6 + evi6 + (0 + precip6 + evi6 | State) + precip7 + evi7 + (0 + precip7 + evi7 | State) + precip8 + evi8 + (0 + precip8 + evi8| State) + FIPS")

    model_names_6 <- c("global_regression_precip_evi"
                     ,"uncorrelated_slope_intercept_precip_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_precip"
                     ,"uncorrelated_slope_intercept_precip_evi_both")
    fitting_functions_6 <- c("lm", "lmer","lmer","lmer")
    svd_issue_6 <- c("N","N", "N", "N")
    uses_FIPS_6 <- c("Y","Y", "Y","Y")
    uses_evi_6 <- c("Y", "Y", "Y", "Y")

    yield_prediction_csv_list <- list(yield_prediction_csv_1, yield_prediction_csv_2, yield_prediction_csv_3, yield_prediction_csv_4, yield_prediction_csv_5, yield_prediction_csv_6)
    rmse_csv_list <- list(rmse_csv_1, rmse_csv_3, rmse_csv_3, rmse_csv_4, rmse_csv_5, rmse_csv_6)
    model_formulas_list <- list(model_formulas_1, model_formulas_2, model_formulas_3, model_formulas_4, model_formulas_5, model_formulas_6)
    model_names_list <- list(model_names_1, model_names_2, model_names_3, model_names_4, model_names_5, model_names_6)
    fitting_functions_list <- list(fitting_functions_1, fitting_functions_2, fitting_functions_3, fitting_functions_4, fitting_functions_5, fitting_functions_6)
    svd_issue_list <- list(svd_issue_1, svd_issue_2, svd_issue_3, svd_issue_4, svd_issue_5, svd_issue_6)
    uses_evi_list <- list(uses_evi_1, uses_evi_2, uses_evi_3, uses_evi_4, uses_evi_5, uses_evi_6)
    uses_FIPS_list <- list(uses_FIPS_1, uses_FIPS_2, uses_FIPS_3, uses_FIPS_4, uses_FIPS_5, uses_FIPS_6)

    
    #___________
    yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed"
    rmse_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed_rmse"


    model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS) + (0 + evi5 + evi6 + evi7 + evi8 + evi9 | State/FIPS) + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)","yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS) + (0 + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) | State/FIPS)")
#____________

        model_formulas_1 <- c( "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + vpdave5 + vpdave6 + vpdave7 + vpdave8 + vpdave9 | State/FIPS)"
                               , "yield_rainfed_ana ~ (1 | State/FIPS) + (vpdave5 + vpdave6 + vpdave7 + vpdave8 + vpdave9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + tave5 + tave6 + tave7 + tave8 + tave9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (tave5 + tave6 + tave7 + tave8 + tave9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + precip5 + vpdave6 + vpdave7 + vpdave8 + vpdave9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (vpdave5 + vpdave6 + vpdave7 + vpdave8 + vpdave9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + evi5 + evi6 + evi7 + evi8 + evi9 | State/FIPS)", "yield_rainfed_ana ~ (1 | State/FIPS) + (evi5 + evi6 + evi7 + evi8 + evi9 | State/FIPS)")

        

        yield_prediction_csv_1 <- "lmer_data_files/single_predictors.csv"
        rmse_csv_1 <- "lmer_data_files/single_predictors__rmse.csv"
#_______________

    # The following solely performs hierarchical nesting using states.
    # It ran to completion and considers VaryingSlope(Y) and Fixed(X)
    # It also considers non-varying intercept with VaryingSlope(Y) and VaryingSlope(X)
    yield_prediction_csv_1 <- "lmer_data_files/vpd_evi.csv"
    rmse_csv_1 <- "lmer_data_files/vpd_evi_rmse.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) "
                        ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + evi5  + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) ")

    model_names_1 <- c("global_regression_vpdave_evi"
                     ,"uncorrelated_slope_intercept_vpdave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_evi_both",
                     "uncorrelated_slope_vpdave_evi_both")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_1 <- c("N","N", "N", "N","N")
    uses_FIPS_1 <- c("N","N", "N","N","N")
    uses_evi_1 <- c("Y", "Y", "Y", "Y","Y")



    yield_prediction_csv_2 <- "lmer_data_files/vpd_tave.csv"
    rmse_csv_2 <- "lmer_data_files/vpd_tave_rmse.csv"
    model_formulas_2 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + tave5 + tave6 + tave7 + tave8 "
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + tave6 + (0 + vpdave6 | State) + vpdave7 + tave7 + (0 + vpdave7 | State) + vpdave8 + tave8 + (0 + vpdave8| State) "
                        ,"yield_rainfed_ana ~ tave5 + vpdave5 + (1 |State) + (0 + tave5 | State) + tave6 + tave6 + (0 + tave6 | State) + tave7 + tave7 + (0 + tave7 | State) + tave8 + tave8 + (0 + tave8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 + tave5 | State) + vpdave6 + tave6 + (0 + vpdave6 + tave6 | State) + vpdave7 + tave7 + (0 + vpdave7 + tave7 | State) + vpdave8 + tave8 + (0 + vpdave8 + tave8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + tave5  + (0 + vpdave5 + tave5 | State) + vpdave6 + tave6 + (0 + vpdave6 + tave6 | State) + vpdave7 + tave7 + (0 + vpdave7 + tave7 | State) + vpdave8 + tave8 + (0 + vpdave8 + tave8| State) ")

    model_names_2 <- c("global_regression_vpdave_tave"
                     ,"uncorrelated_slope_intercept_vpdave_w_tave"
                     ,"uncorrelated_slope_intercept_tave_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_tave_both"
                     ,"uncorrelated_slope_vpdave_tave_both")
    fitting_functions_2 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_2 <- c("N","N", "N", "N","N")
    uses_FIPS_2 <- c("N","N", "N","N","N")
    uses_evi_2 <- c("N","N", "N", "N","N")
    


    yield_prediction_csv_3 <- "lmer_data_files/vpd_precip.csv"
    rmse_csv_3 <- "lmer_data_files/vpd_precip_rmse.csv"
    model_formulas_3 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + precip5 + precip6 + precip7 + precip8 "
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + precip6 + (0 + vpdave6 | State) + vpdave7 + precip7 + (0 + vpdave7 | State) + vpdave8 + precip8 + (0 + vpdave8| State) "
                        ,"yield_rainfed_ana ~ precip5 + vpdave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 + precip5 | State) + vpdave6 + precip6 + (0 + vpdave6 + precip6 | State) + vpdave7 + precip7 + (0 + vpdave7 + precip7 | State) + vpdave8 + precip8 + (0 + vpdave8 + precip8| State) "
                        ,"yield_rainfed_ana ~ vpdave5 + precip5  + (0 + vpdave5 + precip5 | State) + vpdave6 + precip6 + (0 + vpdave6 + precip6 | State) + vpdave7 + precip7 + (0 + vpdave7 + precip7 | State) + vpdave8 + precip8 + (0 + vpdave8 + precip8| State) ")

    model_names_3 <- c("global_regression_vpdave_precip"
                     ,"uncorrelated_slope_intercept_vpdave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_precip_both"
                     ,"uncorrelated_slope_vpdave_precip_both")
    fitting_functions_3 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_3 <- c("N","N", "N", "N","N")
    uses_FIPS_3 <- c("N","N", "N","N","N")
    uses_evi_3 <- c("N","N", "N", "N","N")



    yield_prediction_csv_4 <- "lmer_data_files/tave_precip.csv"
    rmse_csv_4 <- "lmer_data_files/tave_precip_rmse.csv"
    model_formulas_4 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + precip5 + precip6 + precip7 + precip8 "
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 | State) + tave6 + precip6 + (0 + tave6 | State) + tave7 + precip7 + (0 + tave7 | State) + tave8 + precip8 + (0 + tave8| State) "
                        ,"yield_rainfed_ana ~ precip5 + tave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) "
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 + precip5 | State) + tave6 + precip6 + (0 + tave6 + precip6 | State) + tave7 + precip7 + (0 + tave7 + precip7 | State) + tave8 + precip8 + (0 + tave8 + precip8| State) "
                        ,"yield_rainfed_ana ~ tave5 + precip5  + (0 + tave5 + precip5 | State) + tave6 + precip6 + (0 + tave6 + precip6 | State) + tave7 + precip7 + (0 + tave7 + precip7 | State) + tave8 + precip8 + (0 + tave8 + precip8| State) ")

    model_names_4 <- c("global_regression_tave_precip"
                     ,"uncorrelated_slope_intercept_tave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_tave"
                     ,"uncorrelated_slope_intercept_tave_precip_both"
                     ,"uncorrelated_slope_tave_precip_both")
    fitting_functions_4 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_4 <- c("N","N", "N", "N","N")
    uses_FIPS_4 <- c("N","N", "N","N","N")
    uses_evi_4 <- c("N","N", "N", "N","N")



    yield_prediction_csv_5 <- "lmer_data_files/tave_evi.csv"
    rmse_csv_5 <- "lmer_data_files/tave_evi_rmse.csv"
    model_formulas_5 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + evi5 + evi6 + evi7 + evi8 "
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 | State) + tave6 + evi6 + (0 + tave6 | State) + tave7 + evi7 + (0 + tave7 | State) + tave8 + evi8 + (0 + tave8| State) "
                        ,"yield_rainfed_ana ~ evi5 + tave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) "
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 + evi5 | State) + tave6 + evi6 + (0 + tave6 + evi6 | State) + tave7 + evi7 + (0 + tave7 + evi7 | State) + tave8 + evi8 + (0 + tave8 + evi8| State) "
                        ,"yield_rainfed_ana ~ tave5 + evi5  + (0 + tave5 + evi5 | State) + tave6 + evi6 + (0 + tave6 + evi6 | State) + tave7 + evi7 + (0 + tave7 + evi7 | State) + tave8 + evi8 + (0 + tave8 + evi8| State) ")

    model_names_5 <- c("global_regression_tave_evi"
                     ,"uncorrelated_slope_intercept_tave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_tave"
                     ,"uncorrelated_slope_intercept_tave_evi_both"
                     ,"uncorrelated_slope_tave_evi_both")
    fitting_functions_5 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_5 <- c("N","N", "N", "N","N")
    uses_FIPS_5 <- c("N","N", "N","N","N")
    uses_evi_5 <- c("Y", "Y", "Y", "Y","Y")



    yield_prediction_csv_6 <- "lmer_data_files/precip_evi.csv"
    rmse_csv_6 <- "lmer_data_files/precip_evi_rmse.csv"
    model_formulas_6 <- c("yield_rainfed_ana ~ precip5 + precip6 + precip7 + precip8 + evi5 + evi6 + evi7 + evi8 "
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 | State) + precip6 + evi6 + (0 + precip6 | State) + precip7 + evi7 + (0 + precip7 | State) + precip8 + evi8 + (0 + precip8| State) "
                        ,"yield_rainfed_ana ~ evi5 + precip5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) "
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 + evi5 | State) + precip6 + evi6 + (0 + precip6 + evi6 | State) + precip7 + evi7 + (0 + precip7 + evi7 | State) + precip8 + evi8 + (0 + precip8 + evi8| State) "
                        ,"yield_rainfed_ana ~ precip5 + evi5  + (0 + precip5 + evi5 | State) + precip6 + evi6 + (0 + precip6 + evi6 | State) + precip7 + evi7 + (0 + precip7 + evi7 | State) + precip8 + evi8 + (0 + precip8 + evi8| State) ")

    model_names_6 <- c("global_regression_precip_evi"
                     ,"uncorrelated_slope_intercept_precip_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_precip"
                     ,"uncorrelated_slope_intercept_precip_evi_both"
                     ,"uncorrelated_slope_precip_evi_both")
    fitting_functions_6 <- c("lm", "lmer","lmer","lmer","lmer")
    svd_issue_6 <- c("N","N", "N", "N","N")
    uses_FIPS_6 <- c("N","N", "N","N","N")
    uses_evi_6 <- c("Y", "Y", "Y", "Y","Y")

    yield_prediction_csv_list <- list(yield_prediction_csv_2, yield_prediction_csv_3, yield_prediction_csv_4, yield_prediction_csv_5, yield_prediction_csv_6)
    rmse_csv_list <- list(rmse_csv_2, rmse_csv_3, rmse_csv_4, rmse_csv_5, rmse_csv_6)
    model_formulas_list <- list(model_formulas_2, model_formulas_3, model_formulas_4, model_formulas_5, model_formulas_6)
    model_names_list <- list(model_names_2, model_names_3, model_names_4, model_names_5, model_names_6)
    fitting_functions_list <- list(fitting_functions_2, fitting_functions_3, fitting_functions_4, fitting_functions_5, fitting_functions_6)
    svd_issue_list <- list(svd_issue_2, svd_issue_3, svd_issue_4, svd_issue_5, svd_issue_6)
    uses_evi_list <- list(uses_evi_2, uses_evi_3, uses_evi_4, uses_evi_5, uses_evi_6)
    uses_FIPS_list <- list(uses_FIPS_2, uses_FIPS_3, uses_FIPS_4, uses_FIPS_5, uses_FIPS_6)
#_________________

#______________________
    yield_prediction_csv_1 <- "lmer_data_files/vpd_evi.csv"
    rmse_csv_1 <- "lmer_data_files/vpd_evi_rmse.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + evi6 + (0 + vpdave6 | State) + vpdave7 + evi7 + (0 + vpdave7 | State) + vpdave8 + evi8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + vpdave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) + FIPS")

    model_names_1 <- c("global_regression_vpdave_evi"
                     ,"uncorrelated_slope_intercept_vpdave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_evi_both")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer")
    svd_issue_1 <- c("N","N", "N", "N")
    uses_FIPS_1 <- c("Y","Y", "Y","Y")
    uses_evi_1 <- c("Y", "Y", "Y", "Y")



    yield_prediction_csv_2 <- "lmer_data_files/vpd_tave.csv"
    rmse_csv_2 <- "lmer_data_files/vpd_tave_rmse.csv"
    model_formulas_2 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + tave5 + tave6 + tave7 + tave8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + tave6 + (0 + vpdave6 | State) + vpdave7 + tave7 + (0 + vpdave7 | State) + vpdave8 + tave8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + vpdave5 + (1 |State) + (0 + tave5 | State) + tave6 + tave6 + (0 + tave6 | State) + tave7 + tave7 + (0 + tave7 | State) + tave8 + tave8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + tave5 + (1 |State) + (0 + vpdave5 + tave5 | State) + vpdave6 + tave6 + (0 + vpdave6 + tave6 | State) + vpdave7 + tave7 + (0 + vpdave7 + tave7 | State) + vpdave8 + tave8 + (0 + vpdave8 + tave8| State) + FIPS")

    model_names_2 <- c("global_regression_vpdave_tave"
                     ,"uncorrelated_slope_intercept_vpdave_w_tave"
                     ,"uncorrelated_slope_intercept_tave_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_tave_both")
    fitting_functions_2 <- c("lm", "lmer","lmer","lmer")
    svd_issue_2 <- c("N","N", "N", "N")
    uses_FIPS_2 <- c("Y","Y", "Y","Y")
    uses_evi_2 <- c("N","N", "N", "N")
    


    yield_prediction_csv_3 <- "lmer_data_files/vpd_precip.csv"
    rmse_csv_3 <- "lmer_data_files/vpd_precip_rmse.csv"
    model_formulas_3 <- c("yield_rainfed_ana ~ vpdave5 + vpdave6 + vpdave7 + vpdave8 + precip5 + precip6 + precip7 + precip8 + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 | State) + vpdave6 + precip6 + (0 + vpdave6 | State) + vpdave7 + precip7 + (0 + vpdave7 | State) + vpdave8 + precip8 + (0 + vpdave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + vpdave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 + precip5 | State) + vpdave6 + precip6 + (0 + vpdave6 + precip6 | State) + vpdave7 + precip7 + (0 + vpdave7 + precip7 | State) + vpdave8 + precip8 + (0 + vpdave8 + precip8| State) + FIPS")

    model_names_3 <- c("global_regression_vpdave_precip"
                     ,"uncorrelated_slope_intercept_vpdave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_vpdave"
                     ,"uncorrelated_slope_intercept_vpdave_precip_both")
    fitting_functions_3 <- c("lm", "lmer","lmer","lmer")
    svd_issue_3 <- c("N","N", "N", "N")
    uses_FIPS_3 <- c("Y","Y", "Y","Y")
    uses_evi_3 <- c("N","N", "N", "N")



    yield_prediction_csv_4 <- "lmer_data_files/tave_precip.csv"
    rmse_csv_4 <- "lmer_data_files/tave_precip_rmse.csv"
    model_formulas_4 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + precip5 + precip6 + precip7 + precip8 + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 | State) + tave6 + precip6 + (0 + tave6 | State) + tave7 + precip7 + (0 + tave7 | State) + tave8 + precip8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + tave5 + (1 |State) + (0 + precip5 | State) + precip6 + precip6 + (0 + precip6 | State) + precip7 + precip7 + (0 + precip7 | State) + precip8 + precip8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 + precip5 | State) + tave6 + precip6 + (0 + tave6 + precip6 | State) + tave7 + precip7 + (0 + tave7 + precip7 | State) + tave8 + precip8 + (0 + tave8 + precip8| State) + FIPS")

    model_names_4 <- c("global_regression_tave_precip"
                     ,"uncorrelated_slope_intercept_tave_w_precip"
                     ,"uncorrelated_slope_intercept_precip_w_tave"
                     ,"uncorrelated_slope_intercept_tave_precip_both")
    fitting_functions_4 <- c("lm", "lmer","lmer","lmer")
    svd_issue_4 <- c("N","N", "N", "N")
    uses_FIPS_4 <- c("Y","Y", "Y","Y")
    uses_evi_4 <- c("N","N", "N", "N")



    yield_prediction_csv_5 <- "lmer_data_files/tave_evi.csv"
    rmse_csv_5 <- "lmer_data_files/tave_evi_rmse.csv"
    model_formulas_5 <- c("yield_rainfed_ana ~ tave5 + tave6 + tave7 + tave8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 | State) + tave6 + evi6 + (0 + tave6 | State) + tave7 + evi7 + (0 + tave7 | State) + tave8 + evi8 + (0 + tave8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + tave5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 + evi5 | State) + tave6 + evi6 + (0 + tave6 + evi6 | State) + tave7 + evi7 + (0 + tave7 + evi7 | State) + tave8 + evi8 + (0 + tave8 + evi8| State) + FIPS")

    model_names_5 <- c("global_regression_tave_evi"
                     ,"uncorrelated_slope_intercept_tave_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_tave"
                     ,"uncorrelated_slope_intercept_tave_evi_both")
    fitting_functions_5 <- c("lm", "lmer","lmer","lmer")
    svd_issue_5 <- c("N","N", "N", "N")
    uses_FIPS_5 <- c("Y","Y", "Y","Y")
    uses_evi_5 <- c("Y", "Y", "Y", "Y")



    yield_prediction_csv_6 <- "lmer_data_files/precip_evi.csv"
    rmse_csv_6 <- "lmer_data_files/precip_evi_rmse.csv"
    model_formulas_6 <- c("yield_rainfed_ana ~ precip5 + precip6 + precip7 + precip8 + evi5 + evi6 + evi7 + evi8 + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 | State) + precip6 + evi6 + (0 + precip6 | State) + precip7 + evi7 + (0 + precip7 | State) + precip8 + evi8 + (0 + precip8| State) + FIPS"
                        ,"yield_rainfed_ana ~ evi5 + precip5 + (1 |State) + (0 + evi5 | State) + evi6 + evi6 + (0 + evi6 | State) + evi7 + evi7 + (0 + evi7 | State) + evi8 + evi8 + (0 + evi8| State) + FIPS"
                        ,"yield_rainfed_ana ~ precip5 + evi5 + (1 |State) + (0 + precip5 + evi5 | State) + precip6 + evi6 + (0 + precip6 + evi6 | State) + precip7 + evi7 + (0 + precip7 + evi7 | State) + precip8 + evi8 + (0 + precip8 + evi8| State) + FIPS")

    model_names_6 <- c("global_regression_precip_evi"
                     ,"uncorrelated_slope_intercept_precip_w_evi"
                     ,"uncorrelated_slope_intercept_evi_w_precip"
                     ,"uncorrelated_slope_intercept_precip_evi_both")
    fitting_functions_6 <- c("lm", "lmer","lmer","lmer")
    svd_issue_6 <- c("N","N", "N", "N")
    uses_FIPS_6 <- c("Y","Y", "Y","Y")
    uses_evi_6 <- c("Y", "Y", "Y", "Y")

    yield_prediction_csv_list <- list(yield_prediction_csv_1, yield_prediction_csv_2, yield_prediction_csv_3, yield_prediction_csv_4, yield_prediction_csv_5, yield_prediction_csv_6)
    rmse_csv_list <- list(rmse_csv_1, rmse_csv_3, rmse_csv_3, rmse_csv_4, rmse_csv_5, rmse_csv_6)
    model_formulas_list <- list(model_formulas_1, model_formulas_2, model_formulas_3, model_formulas_4, model_formulas_5, model_formulas_6)
    model_names_list <- list(model_names_1, model_names_2, model_names_3, model_names_4, model_names_5, model_names_6)
    fitting_functions_list <- list(fitting_functions_1, fitting_functions_2, fitting_functions_3, fitting_functions_4, fitting_functions_5, fitting_functions_6)
    svd_issue_list <- list(svd_issue_1, svd_issue_2, svd_issue_3, svd_issue_4, svd_issue_5, svd_issue_6)
    uses_evi_list <- list(uses_evi_1, uses_evi_2, uses_evi_3, uses_evi_4, uses_evi_5, uses_evi_6)
    uses_FIPS_list <- list(uses_FIPS_1, uses_FIPS_2, uses_FIPS_3, uses_FIPS_4, uses_FIPS_5, uses_FIPS_6)
    #___________________
    #The following csv files were given inappropriate names
    yield_prediction_csv_1 <- "lmer_data_files/tave_evi_squared.csv"
    rmse_csv_1 <- "lmer_data_files/tave_evi_squared_rmse.csv"
    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + FIPS", 
    "yield_rainfed_ana ~ (1 | State) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + (0 + vpdave5 + vpdave5^2  + I(vpdave5^2)+ vpdave6 + vpdave6^2  + I(vpdave6^2)+ vpdave7 + vpdave7^2  + I(vpdave7^2)+ vpdave8 + vpdave8^2  + I(vpdave8^2)| State) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + FIPS",
    "yield_rainfed_ana ~ (1 | State) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + (evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) | State) + FIPS", 
    "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + FIPS + (vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) | State) + FIPS", 
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + (0 + vpdave5 + vpdave5^2  + I(vpdave5^2)+ vpdave6 + vpdave6^2  + I(vpdave6^2)+ vpdave7 + vpdave7^2  + I(vpdave7^2)+ vpdave8 + vpdave8^2  + I(vpdave8^2)| State/FIPS) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2)",
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + (evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) | State/FIPS)", 
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + FIPS + (vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) | State/FIPS)") 
    model_names_1 <- c("global", "Var1Cat", "Var2Cat", "Var12Cat", "Var1Level", "Var2Level", "Var12Level")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer","lmer","lmer","lmer")
    svd_issue_1 <- c("N","N", "N", "N","N", "N", "N")
    uses_FIPS_1 <- c("Y","Y", "Y","Y","Y", "Y","Y")
    uses_evi_1 <- c("Y", "Y", "Y", "Y","Y", "Y", "Y")

#____________

    yield_prediction_csv_1 <- "lmer_data_files/best_model.csv"
    rmse_csv_1 <- "lmer_data_files/best_model_rmse.csv"

    model_formulas_1 <- c( "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 + I(vpdave5^2) | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 + I(vpdave6^2) | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 + I(vpdave7^2) | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 + I(vpdave8^2)| State/FIPS)  + tave6 + I(tave6^2) + tave7 + I(tave7^2) + tave8 + I(tave8^2) + tave9 + I(tave9^2) ")



    model_names_1 <- c("best_model")
    fitting_functions_1 <- c("lmer")
    svd_issue_1 <- c("N")
    uses_FIPS_1 <- c("Y")
    uses_evi_1 <- c("Y")
#______________

    yield_prediction_csv_1 <- "lmer_data_files/tave_evi_squared.csv"
    rmse_csv_1 <- "lmer_data_files/tave_evi_squared_rmse.csv"
    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + FIPS", 
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + (0 + vpdave5 | State/FIPS)  + (0 + I(vpdave5^2) | State/FIPS)+ (0 + vpdave6 | State/FIPS)  + (0 + I(vpdave6^2) | State/FIPS)+ (0 + vpdave7 | State/FIPS)  + (0 + I(vpdave7^2) | State/FIPS)+ (0 + vpdave8 | State/FIPS)  + (0 + I(vpdave8^2) | State/FIPS) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2)",
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + (0 + evi5 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + evi6 | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + evi7 | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + evi8 | State/FIPS) + (0 + I(evi8^2) | State/FIPS)", 
    "yield_rainfed_ana ~ (1 | State/FIPS) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2)  + (0 + vpdave5 | State/FIPS) + (0 + I(vpdave5^2) | State/FIPS) + (0 + vpdave6 | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + vpdave7 | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + vpdave8 | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS) + (0 + evi5 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + evi6 | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + evi7 | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + evi8 | State/FIPS) + (0 + I(evi8^2) | State/FIPS) ",
    "yield_rainfed_ana ~ (1 | State) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + (0 + vpdave5 + I(vpdave5^2) | State) + (0 + vpdave6 + I(vpdave6^2) | State) + (0 + vpdave7 + I(vpdave7^2) | State) +  (0 + vpdave8 + I(vpdave8^2) | State) ",
    "yield_rainfed_ana ~ (1 | State) + vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + (0 + evi5 | State) + (0 + I(evi5^2) | State) + (0 + evi6 | State) + (0 + I(evi6^2) | State) + (0 + evi7 | State) + (0 + I(evi7^2) | State) + (0 + evi8 | State) + (0 + I(evi8^2) | State) ", 
    "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + vpdave6 + I(vpdave6^2) + vpdave7 + I(vpdave7^2) + vpdave8 + I(vpdave8^2) + evi5 + I(evi5^2) + evi6 + I(evi6^2) + evi7 + I(evi7^2) + evi8 + I(evi8^2) + (0 + vpdave5 | State) + (0 + I(vpdave5^2) | State) + (0 + vpdave6 | State) + (0 + I(vpdave6^2) | State) + (0 + vpdave7 | State) + (0 + I(vpdave7^2) | State) + (0 + vpdave8 | State) + (0 + I(vpdave8^2) | State) + (0 + evi5 | State) + (0 + I(evi5^2) | State) + (0 + evi6 | State) + (0 + I(evi6^2) | State) + (0 + evi7 | State) + (0 + I(evi7^2) | State) + (0 + evi8 | State) + (0 + I(evi8^2) | State) ", 
    "yield_rainfed_ana ~ vpdave5 + I(vpdave5^2) + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + vpdave5 + I(vpdave5^2) | State/FIPS) + vpdave6 + I(vpdave6^2) + evi6 + I(evi6^2) + (0 + vpdave6 + I(vpdave6^2) | State/FIPS) + vpdave7 + I(vpdave7^2) + evi7 + I(evi7^2) + (0 + vpdave7 + I(vpdave7^2) | State/FIPS) + vpdave8 + I(vpdave8^2) + evi8 + I(evi8^2) + (0 + vpdave8 + I(vpdave8^2)| State/FIPS)  ")
    #"yield_rainfed_ana ~ (1 | State/FIPS) + (vpdave5 | State/FIPS) + (I(vpdave5^2) | State/FIPS) + (vpdave6 | State/FIPS) + (I(vpdave6^2) | State/FIPS) + (vpdave7 | State/FIPS) + (I(vpdave7^2) | State/FIPS) + (vpdave8 | State/FIPS) + (I(vpdave8^2) | State/FIPS) + (evi5 | State/FIPS) + (I(evi5^2) | State/FIPS) + (evi6 | State/FIPS) + (I(evi6^2) | State/FIPS) + (evi7 | State/FIPS) + (I(evi7^2) | State/FIPS) + (evi8 | State/FIPS) + (I(evi8^2) | State/FIPS)") 
    model_names_1 <- c("global", "Var1Level", "Var2Level", "Var12Level", "Var1Cat", "Var2Cat", "Var12Cat", "best_model_wout_tave")
    fitting_functions_1 <- c("lm", "lmer","lmer","lmer","lmer","lmer","lmer","lmer")
    svd_issue_1 <- c("N","N", "N", "N","N", "N", "N","N")
    uses_FIPS_1 <- c("Y","Y", "Y","Y","Y", "Y","Y","Y")
    uses_evi_1 <- c("Y", "Y", "Y", "Y","Y", "Y", "Y","Y")

    #_____________
    #From the following files, only the first four terminated
    #in a reasonable amount of time. The first four csv files
    #have been saved as their model names elsewhere.
    yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed_fixed"

      model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS) + (0 + evi5 | State/FIPS) + (0 + evi6 | State/FIPS) + (0 + evi7 | State/FIPS) + (0 + evi8 | State/FIPS) + (0 + evi9 | State/FIPS) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)",
    "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State/FIPS) + (0 + evi5  | State/FIPS)+ (0 + evi6  | State/FIPS)+ (0 + evi7  | State/FIPS)+ (0 + evi8  | State/FIPS)+ (0 + evi9  | State/FIPS) +(0 +  I(evi5^2) | State/FIPS) +(0 +  I(evi6^2) | State/FIPS) +(0 +  I(evi7^2) | State/FIPS) +(0 +  I(evi8^2) | State/FIPS) +(0 +  I(evi9^2) | State/FIPS) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)"
    , "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) +  (1 | State)+ (0 + evi5 | State) + (0 + evi6 | State) + (0 + evi7 | State) + (0 + evi8 | State) + (0 + evi9 | State) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS",
    "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + (1 | State) + (0 + evi5  | State)+ (0 + evi6  | State)+ (0 + evi7  | State)+ (0 + evi8  | State)+ (0 + evi9  | State) +(0 +  I(evi5^2) | State) +(0 +  I(evi6^2) | State) +(0 +  I(evi7^2) | State) +(0 +  I(evi8^2) | State) +(0 +  I(evi9^2) | State) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS",
    "yield_rainfed_ana ~ (0 + bs(vpdave6, knots = c(8,10,13,15), degree=1) | State) + (0 + bs(vpdave7,df=3, knots = c(8,11), degree=1) | State) + (0 + bs(vpdave8,df=3, knots = c(8,15), degree=1)) + (0 + bs(precip6,df=3, knots = c(75,200), degree=1) | State) + (0 + bs(precip7,df=3, knots = c(75,200), degree=1) | State) + (0 + bs(precip8,df=2, knots = c(90), degree=1)) + (0 + bs(precip9,df=3, knots = c(100,200), degree=1) | State) + (1 | State) + (0 + evi5  | State)+ (0 + evi6  | State)+ (0 + evi7  | State)+ (0 + evi8  | State)+ (0 + evi9  | State) +(0 +  I(evi5^2) | State) +(0 +  I(evi6^2) | State) +(0 +  I(evi7^2) | State) +(0 +  I(evi8^2) | State) +(0 +  I(evi9^2) | State) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS")

    model_names_1 <- c("vpd_spline_evi_poly_3_levels_linear","vpd_spline_evi_poly_3_levels_quadratic","vpd_spline_evi_poly_2_levels_linear","vpd_spline_evi_poly_2_levels_quadratic","vpd_spline_level_evi_poly_2_levels_quadratic")
    fitting_functions_1 <- c("lmer","lmer","lmer","lmer","lmer")
    svd_issue_1 <- c("Y","Y","Y","Y","Y")
    uses_evi_1 <- c("Y","Y","Y","Y","Y")
    uses_FIPS_1 <- c("Y","Y","Y","Y","Y")


#_______________

    yield_prediction_csv_1 <- "lmer_data_files/incremental_vpd_evi_yield"
    rmse_csv_1 <- "lmer_data_files/incremental_vpd_evi_rmse"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State/FIPS) + (0 + I(vpdave5^2) | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State/FIPS) + (0 + vpdave5 | State/FIPS) +  (0 + vpdave6 | State/FIPS) +  (0 + vpdave7 | State/FIPS) +  (0 + vpdave8 | State/FIPS)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)" ,
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + I(evi8^2) | State/FIPS)" ,
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State/FIPS) + (0 + evi5 | State/FIPS) +  (0 + evi6 | State/FIPS) +  (0 + evi7 | State/FIPS) +  (0 + evi8 | State/FIPS)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State)",
                          "yield_rainfed_ana ~ (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                          "yield_rainfed_ana ~ (0 + vpdave5 | State/FIPS) +  (0 + vpdave6 | State/FIPS) +  (0 + vpdave7 | State/FIPS) +  (0 + vpdave8 | State/FIPS) + (0 + I(vpdave5^2) | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS) + (0 + evi5 | State/FIPS) +  (0 + evi6 | State/FIPS) +  (0 + evi7 | State/FIPS) +  (0 + evi8 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + I(evi8^2) | State/FIPS)")
#_______________

    yield_prediction_csv_1 <- "lmer_data_files/incremental_vpd_evi_corrections_yield"
    rmse_csv_1 <- "lmer_data_files/incremental_vpd_evi_corrections_rmse"

    model_formulas_1 <- c("yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)" ,
                          "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State)",
                          "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                          "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (1 | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State)",
                          "yield_rainfed_ana ~ FIPS + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)")


#_____________________________
yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed_fixed"

          model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + FIPS + (0 + evi5 | State/FIPS) + (0 + evi6 | State/FIPS) + (0 + evi7 | State/FIPS) + (0 + evi8 | State/FIPS) + (0 + evi9 | State/FIPS) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)",
                                    "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + FIPS + (0 + evi5  | State/FIPS)+ (0 + evi6  | State/FIPS)+ (0 + evi7  | State/FIPS)+ (0 + evi8  | State/FIPS)+ (0 + evi9  | State/FIPS) +(0 +  I(evi5^2) | State/FIPS) +(0 +  I(evi6^2) | State/FIPS) +(0 +  I(evi7^2) | State/FIPS) +(0 +  I(evi8^2) | State/FIPS) +(0 +  I(evi9^2) | State/FIPS) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)"
                                        , "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) +  FIPS + (0 + evi5 | State) + (0 + evi6 | State) + (0 + evi7 | State) + (0 + evi8 | State) + (0 + evi9 | State) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2) + FIPS",
                                    "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + FIPS + (0 + evi5  | State)+ (0 + evi6  | State)+ (0 + evi7  | State)+ (0 + evi8  | State)+ (0 + evi9  | State) +(0 +  I(evi5^2) | State) +(0 +  I(evi6^2) | State) +(0 +  I(evi7^2) | State) +(0 +  I(evi8^2) | State) +(0 +  I(evi9^2) | State) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)")

#__________
# All of the following models
    yield_prediction_csv_1 <- "lmer_data_files/random_slopes_no_fixed_slopes_yield.csv"
    rmse_csv_1 <- "lmer_data_files/random_slopes_no_fixed_slopes_rmse.csv"

    model_formulas_1 <- c(
                                                        "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                                                                                  "yield_rainfed_ana ~ (1 | State/FIPS) + (0 + vpdave5 | State/FIPS) +  (0 + vpdave6 | State/FIPS) +  (0 + vpdave7 | State/FIPS) +  (0 + vpdave8 | State/FIPS) + (0 + I(vpdave5^2) | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS) + (0 + evi5 | State/FIPS) +  (0 + evi6 | State/FIPS) +  (0 + evi7 | State/FIPS) +  (0 + evi8 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + I(evi8^2) | State/FIPS)",
# This is saved in lmer data files as varying_slope_no_fixed_state.csv
                                                                                  "yield_rainfed_ana ~ FIPS + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                                                                                                                                      "yield_rainfed_ana ~ FIPS + (0 + vpdave5 | State/FIPS) +  (0 + vpdave6 | State/FIPS) +  (0 + vpdave7 | State/FIPS) +  (0 + vpdave8 | State/FIPS) + (0 + I(vpdave5^2) | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS) + (0 + evi5 | State/FIPS) +  (0 + evi6 | State/FIPS) +  (0 + evi7 | State/FIPS) +  (0 + evi8 | State/FIPS) + (0 + I(evi5^2) | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + I(evi8^2) | State/FIPS)")



#_____________


yield_prediction_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed_fixed_2"
rmse_csv_1 <- "lmer_data_files/vpd_spline_evi_mixed_fixed_rmse_2"

          model_formulas_1 <- c("yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) +  FIPS + (0 + evi5 | State) + (0 + evi6 | State) + (0 + evi7 | State) + (0 + evi8 | State) + (0 + evi9 | State) + evi5 + evi6 + evi7 + evi8 + evi9 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)",
                                "yield_rainfed_ana ~ bs(vpdave6, knots = c(8,10,13,15), degree=1) + bs(vpdave7,df=3, knots = c(8,11), degree=1) + bs(vpdave8,df=3, knots = c(8,15), degree=1) + bs(precip6,df=3, knots = c(75,200), degree=1) + bs(precip7,df=3, knots = c(75,200), degree=1) + bs(precip8,df=2, knots = c(90), degree=1) + bs(precip9,df=3, knots = c(100,200), degree=1) + FIPS + (0 + evi5  | State)+ (0 + evi6  | State)+ (0 + evi7  | State)+ (0 + evi8  | State)+ (0 + evi9  | State) +(0 +  I(evi5^2) | State) +(0 +  I(evi6^2) | State) +(0 +  I(evi7^2) | State) +(0 +  I(evi8^2) | State) +(0 +  I(evi9^2) | State) + evi5 + evi6 + evi7 + evi8 + evi9  + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + I(evi9^2)")

#_________


    yield_prediction_csv_1 <- "lmer_data_files/incremental_vpd_evi_star_yield"
    rmse_csv_1 <- "lmer_data_files/incremental_vpd_evi_star_rmse"
    model_formulas_1 <- c("yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)",
                          "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (0 + vpdave5 | State) + (0 + vpdave6 | State) + (0 + vpdave7 | State) + (0 + vpdave8 | State)",
                      "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)",
                                            "yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (0 + evi5 | State) + (0 + evi6 | State) + (0 + evi7 | State) + (0 + evi8 | State)")

#__________


    yield_prediction_csv_1 <- "lmer_data_files/incremental_vpd_evi_final"
    rmse_csv_1 <- "lmer_data_files/incremental_vpd_evi_final"
    model_formulas_1 <- c("yield_rainfed_ana ~ FIPS + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)")

#___________

    yield_prediction_csv_1 <- "lmer_data_files/july26configurations.csv"
    rmse_csv_1 <- "lmer_data_files/july26configurations_rmse.csv"
    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + (1 | State/FIPS) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 +  I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + FIPS",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + (1 | State/FIPS) + (0 + I(vpdave5) | State) + (0 + I(vpdave6) | State) + (0 + I(vpdave7) | State) + (0 + I(vpdave8) | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + FIPS",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + precip5 +  precip6 +  precip7 +  precip8 ",
                          "yield_rainfed_ana ~ (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + precip5 +  precip6 +  precip7 +  precip8 ")

#______________

    yield_prediction_csv_1 <- "lmer_data_files/best_model_July_Rain_full.csv"
    rmse_csv_1 <- "lmer_data_files/best_model_rmse_July_Rain_full.csv"

    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 + evi5 + I(evi5^2) + (1 |State/FIPS) + (0 + I(vpdave5^2) | State) + vpdave6 + evi6 + I(evi6^2) + (0 + I(vpdave6^2) | State) + vpdave7 + evi7 + I(evi7^2) + (0 + I(vpdave7^2) | State) + vpdave8 + evi8 + I(evi8^2) + (0 + I(vpdave8^2)| State) + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + precip5 + precip6 + precip7 + precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2)")


#______________
    yield_prediction_csv_1 <- "lmer_data_files/july26configurations.csv"
    rmse_csv_1 <- "lmer_data_files/july26configurations_rmse.csv"
    model_formulas_1 <- c("yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + (1 | State/FIPS) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 +  I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + evi5 +  evi6 +  evi7 +  evi8 + FIPS",
                          "yield_rainfed_ana ~ evi5 +  evi6 +  evi7 +  evi8 + (1 | State/FIPS) + (0 + I(vpdave5) | State) + (0 + I(vpdave6) | State) + (0 + I(vpdave7) | State) + (0 + I(vpdave8) | State)",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + evi5 +  evi6 +  evi7 +  evi8 + FIPS",
                          "yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + precip5 +  precip6 +  precip7 +  precip8 ",
                          "yield_rainfed_ana ~ (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + precip5 +  precip6 +  precip7 +  precip8 ")



#___________


    # Only the first 16 model configurations (those that made variations to precip and vpdave)
    # ran to completion
    yield_prediction_csv_1 <- "lmer_data_files/august6configurations.csv"
    rmse_csv_1 <- "lmer_data_files/august6configurations_rmse.csv"
    model_formulas_1 <- c(
                          "yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + FIPS",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ vpdave5 +  vpdave6 +  vpdave7 +  vpdave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~  + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State) + (0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State) + (1 | State/FIPS)",

"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + FIPS",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + tave5 +  tave6 +  tave7 +  tave8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ tave5 +  tave6 +  tave7 +  tave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~  + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)")



    model_names_1 <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P", "Aa","Ba","Ca","Da","Ea","Fa","Ga","Ha","Ia","Ja","Ka","La","Ma","Na","Oa","Pa")
    fitting_functions_1 <- c("lm","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer", "lm","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer")



    #_____________
    yield_prediction_csv_1 <- "lmer_data_files/august6configurations2.csv"
    rmse_csv_1 <- "lmer_data_files/august6configurations2_rmse.csv"
    model_formulas_1 <- c( "yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + FIPS",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ tave5 +  tave6 +  tave7 +  tave8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(tave5^2) + I(tave6^2) + I(tave7^2) + I(tave8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + tave5 +  tave6 +  tave7 +  tave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + tave5 +  tave6 +  tave7 +  tave8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ tave5 +  tave6 +  tave7 +  tave8 + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2) + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~ precip5 +  precip6 +  precip7 +  precip8 + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)",
"yield_rainfed_ana ~  + (0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State) + (0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State) + (0 + tave5 | State) +  (0 + tave6 | State) +  (0 + tave7 | State) +  (0 + tave8 | State) + (0 + I(tave5^2) | State) + (0 + I(tave6^2) | State) + (0 + I(tave7^2) | State) + (0 + I(tave8^2) | State) + (1 | State/FIPS)")



    model_names_1 <- c("Aa","Ba","Ca","Da","Ea","Fa","Ga","Ha","Ia","Ja","Ka","La","Ma","Na","Oa","Pa")
    fitting_functions_1 <- c("lm","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer","lmer")

        
    svd_issue_1 <- c("N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N")

    uses_FIPS_1 <- c("Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y")

    uses_evi_1 <- c("N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N")

    #___________
    yield_prediction_csv_1 <- "lmer_data_files/august7configurations_convergence.csv"
    rmse_csv_1 <- "lmer_data_files/august6configurations_convergence_rmse.csv"

    model_formulas_1 <- ("yield_rainfed_ana ~ vpdave5 + evi5 + (1 |State) + (0 + vpdave5 + evi5 | State) + vpdave6 + evi6 + (0 + vpdave6 + evi6 | State) + vpdave7 + evi7 + (0 + vpdave7 + evi7 | State) + vpdave8 + evi8 + (0 + vpdave8 + evi8| State) ", "yield_rainfed_ana ~ tave5 + vpdave5 + (1 |State) + (0 + tave5 + vpdave5 | State) + tave6 + vpdave6 + (0 + tave6 + vpdave6 | State) + tave7 + vpdave7 + (0 + tave7 + vpdave7 | State) + tave8 + vpdave8 + (0 + tave8 + vpdave8| State) ", "yield_rainfed_ana ~ vpdave5 + precip5 + (1 |State) + (0 + vpdave5 + precip5 | State) + vpdave6 + precip6 + (0 + vpdave6 + precip6 | State) + vpdave7 + precip7 + (0 + vpdave7 + precip7 | State) + vpdave8 + precip8 + (0 + vpdave8 + precip8| State) ", "yield_rainfed_ana ~ tave5 + precip5 + (1 |State) + (0 + tave5 + precip5 | State) + tave6 + precip6 + (0 + tave6 + precip6 | State) + tave7 + precip7 + (0 + tave7 + precip7 | State) + tave8 + precip8 + (0 + tave8 + precip8| State) ", "yield_rainfed_ana ~ tave5 + evi5 + (1 |State) + (0 + tave5 + evi5 | State) + tave6 + evi6 + (0 + tave6 + evi6 | State) + tave7 + evi7 + (0 + tave7 + evi7 | State) + tave8 + evi8 + (0 + tave8 + evi8| State) ", "yield_rainfed_ana ~ evi5 + precip5 + (1 |State) + (0 + evi5 + precip5 | State) + evi6 + precip6 + (0 + evi6 + precip6 | State) + evi7 + precip7 + (0 + evi7 + precip7 | State) + evi8 + precip8 + (0 + evi8 + precip8| State)")

    model_names_1 <- c("A","B","C","D","E","F")
    fitting_functions_1 <- c("lmer","lmer","lmer","lmer","lmer","lmer")

        
    svd_issue_1 <- c("N","N","N","N","N","N")

    uses_FIPS_1 <- c("N","N","N","N","N","N")

    uses_evi_1 <- c("Y","N","N","N","Y","Y")
















