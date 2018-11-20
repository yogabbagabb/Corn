import numpy as np
import pandas as pd



# After specifying the rmse csv files, this simple function calculates the median for each
# set of files
def printRMSEMedian(csvFiles=None):
    # csvFiles = ["tave_evi_squared_rmse.csv"]

    for file in csvFiles:
        A = pd.read_csv(file)
        A = A.iloc[:,1:]
        print(A.median())

def calculateR2(csvFiles):
    """
    For batches that run to completion, we can calculate the R2 statistics for each model within the batch with this function.
    csvFiles (array of csv file names, each representing a batch that ran to completion using corn_model.R)
    Returns: None (Prints out the R2 statistics of these models)
    """
    indexOfFirstModel = 7
    for aFile in csvFiles:
        modelFrame = pd.read_csv(aFile)
        # Get the column names from the data frame
        colNames = list(modelFrame)
        for model in colNames[indexOfFirstModel::]:

            result = pd.DataFrame(np.full([modelFrame['year'].unique().shape[0],3], np.nan), index=modelFrame['year'].unique(), columns=['R2','rmse','R2_classic'])

            for y in range(modelFrame['year'].min(), modelFrame['year'].max()+1):
                con = modelFrame['year']==y
                yieldType = "yield_rainfed"
                r2_temp = modelFrame.loc[con,[yieldType, \
                                        model]].corr() \
                    [model][0]**2
                
                # N is the sample number after removing nan
                N = modelFrame.loc[con,[yieldType,model]].dropna().shape[0]
                rmse_temp = (((modelFrame.loc[con, model] -  \
                                  modelFrame.loc[con, yieldType])**2).sum() \
                                              /N)**0.5
                                          #    /modelFrame.loc[con,yieldType].shape[0])**0.5
                             
        #                                       /modelFrame.loc[con,model].shape[0])**0.5

                sst = ((modelFrame.loc[con, yieldType] \
                        - modelFrame.loc[con, yieldType].mean())**2).sum()
                sse = ((modelFrame.loc[con, yieldType] - modelFrame.loc[con, model])**2).sum()

                result.loc[y] = [r2_temp, rmse_temp, 1-sse/sst]
            print(model)
            # print(result)
            print(result.median()['rmse'])
            print(result.median()['R2'])


def calculateR2Emergency(csvFiles):
    """
    For batches that fail to run to completion, we can calculate the R2 statistics for models
    within the batch that ran to completion (even if the entire batch did not run to completion).
    csvFiles (array of csv file names, each representing an individual model that ran to completion using corn_model.R)
    Returns: None (Prints out the R2 statistics of these models)
    """

    indexOfFirstModel = 1
    for aFile in csvFiles:
        modelFrame = pd.read_csv(aFile)
        # Get the column names from the data frame
        colNames = list(modelFrame)
        model = colNames[indexOfFirstModel]

        result = pd.DataFrame(np.full([modelFrame['year'].unique().shape[0],3], np.nan), index=modelFrame['year'].unique(), columns=['R2','rmse','R2_classic'])

        for y in range(modelFrame['year'].min(), modelFrame['year'].max()+1):
            con = modelFrame['year']==y
            yieldType = "yield_rainfed_ana"
            r2_temp = modelFrame.loc[con,[yieldType, \
                                    model]].corr() \
                [model][0]**2
            
            # N is the sample number after removing nan
            N = modelFrame.loc[con,[yieldType,model]].dropna().shape[0]
            rmse_temp = (((modelFrame.loc[con, model] -  \
                              modelFrame.loc[con, yieldType])**2).sum() \
                                          /N)**0.5
                                      #    /modelFrame.loc[con,yieldType].shape[0])**0.5
                         
    #                                       /modelFrame.loc[con,model].shape[0])**0.5

            sst = ((modelFrame.loc[con, yieldType] \
                    - modelFrame.loc[con, yieldType].mean())**2).sum()
            sse = ((modelFrame.loc[con, yieldType] - modelFrame.loc[con, model])**2).sum()

            result.loc[y] = [r2_temp, rmse_temp, 1-sse/sst]
        print(model)
        # print(result)
        print(result)
        print(result.median()['rmse'])
        print(result.median()['R2'])


