# Documentation

## Exploration
A directory containing files to explore data. At present, this directory contains files that need to be edited further.
They have been hidden by preprending their file names with a period.

## Model Configurations
A directory containing a record (`catalog.R`) of several run lmer model configurations. This directory also contains code that allows one to programatically generate model configurations.

## predictionFrames
A directory into which you can save the data frames that are formed by concatenating the initial processed data with the predictions made by `corn_model.R`. There is nothing in it, at present.

## `corn_model.R`
This code allows you to perform mixed effect modeling using *lmer* or ordinary least squares regression modeling. How this function works is largely explained by the comments in the code and by documentation in the `Soybean` project. We do **stress** one point, however: `lmer` is notoriously slow at performing mixed effect modeling. At times, while you run a batch of models (ie a group of different model configurations), you may wish to retain the models fitted up until a point in time and abort prediction on all other models. To achieve this, `corn_model.R` always saves a data frame of a completed model using `model_name.csv` where `model_name` is specifiable in the code. This way, even if other models take too long, or for some reason abort, you will at least have prediction results for a few models. In the event, however, that all models in a batch run to completion, then these temporary CSV files will be automatically deleted. Thus, there are two scenarios: you either have CSV files of certain models with a batch, one CSV file to a model, or one CSV file of a batch, containing prediction results for all models in the batch. For these two scenarios, there are also two ways of calculating R2. These two ways are summarized in 

## Statistics
A directory containing code to print R2. There are two different algorithms for computing R2 for the data frames produced by `corn_model.R`. The source code describes their differences. It is intended that you import these functions for your use in calculating R2.
