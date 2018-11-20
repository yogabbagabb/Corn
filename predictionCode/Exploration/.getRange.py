import numpy as np
import pandas as pd
import statsmodels.formula.api as smf
import statsmodels.api as sm

# Experimental
#TODO See if this can be generalized
A = pd.read_csv("./Cross_Validation_R_Python_func_crop_model/func_model_dataset")
A = A[A['corn_percent'] > 0]
A = A[~(pd.isnull(A['precip5']))]
A = A[~(pd.isnull(A['vpdave5']))]
A = A[~(pd.isnull(A['evi5']))]

def findMax(predicName):
    maxYear = float("inf")
    maxValue = float("inf")
    for i in range(2003,2017):
        print(i)
        B = A[A['year'] != i]
        if (max(B[predicName]) < maxValue):
            maxValue = max(B[predicName])
            maxYear = i
        print(max(B[predicName]))
    print("The max value is %s from year %s"%(maxValue,maxYear))

if __name__ == "__main__":
    findMax("precip5")
    findMax("precip6")
    findMax("precip7")
    findMax("precip8")
    findMax("precip9")




