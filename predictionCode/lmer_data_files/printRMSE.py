import pandas as pd



csvFiles = ["vpd_tave_rmse.csv", "precip_evi_rmse.csv", "tave_evi_rmse.csv",
        "vpd_evi_rmse.csv", "tave_precip_rmse.csv", "vpd_precip_rmse.csv"]

for file in csvFiles:
    A = pd.read_csv(file)
    A = A.iloc[:,1:]
    print(A.median())
