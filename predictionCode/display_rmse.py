
# coding: utf-8

# In[1]:

import pandas as pd
import statsmodels.formula.api as smf
import statsmodels.api as s
import numpy as np
import matplotlib.pyplot as plt
import pystan


# In[2]:

state_data = pd.read_csv("lmer_data_files/rmse_state_regression_with_lumping.csv")
col_names = list(state_data)
print(col_names)
state_data = state_data.rename(columns = {col_names[0]:"year", col_names[1]:"RMSE"})
model_data = pd.read_csv("lmer_data_files/models_rmse.csv")
# state_data = state_data.drop("Unnamed: 0",axis=1)
# lmer_data = lmer_data.drop("Unnamed: 0",axis=1)

# This code below originally computed means using my old RMSE protocol which averaged the RMSE over all
# states for a given year

# mean_values = state_data.mean(1, numeric_only = True)
# # print(state_data.mean(0, numeric_only = True))
# state_data['mean'] = mean_values.iloc[:].values
# print(state_data)



# In[3]:

# print(state_data)
# print(model_data)


# # In[4]:

# years = [i for i in range(2001,2016)]
# plt.plot(years, state_data['RMSE'],'rx',label="Lumping RMSE based on State Regression (10 States)")
# model_names = list(model_data)
# # Ignore the year column
# number_of_model_names = len(model_names) - 1
# first_index_of_model_names = 1
# color_array = ['bx', 'cx', 'gx', 'yx', 'kx', 'mx', 'bv']
# for i in range(number_of_model_names):    
    # plt.plot(years, model_data[model_names[first_index_of_model_names + i]],color_array[i],label= (model_names[first_index_of_model_names + i] + " RMSE"))
# plt.legend(loc="best")
# plt.show()


# # In[5]:

# single = [1]
# plt.plot(single, state_data['RMSE'].mean(),'rx',label="Lumping RMSE based on State Regression (10 States)")
# model_names = list(model_data)
# # Ignore the year column
# number_of_model_names = len(model_names) - 1
# first_index_of_model_names = 1
# color_array = ['bx', 'cx', 'gx', 'yx', 'kx', 'mx', 'bv']
# for i in range(number_of_model_names):    
    # plt.plot(single, model_data[model_names[first_index_of_model_names + i]].mean(),color_array[i],label= (model_names[first_index_of_model_names + i] + " RMSE"))
# plt.legend(loc="best")
# print(model_data[model_names[first_index_of_model_names + 2]])
# plt.show()


# In[11]:

single = [1]
plt.plot(single, state_data['RMSE'].mean(),'rx',label="Lumping RMSE based on State Regression (10 States)")
proxy_model_names = ["Fill","Model A", "Model B", "Model C", "Model D", "Model E"]
first_index_of_model_names = 1
color_array = ['bx', 'cx', 'gx', 'yx', 'kx', 'mx', 'bv']




single = [2]
model_data = pd.read_csv("lmer_data_files/vpdave_evi_rmse.csv")    
print("lmer_data_files/vpdave_evi_rmse.csv")

model_names = list(model_data)
number_of_model_names = len(model_names) - 1
for i in range(number_of_model_names-2):    
    plt.plot(single, model_data[model_names[first_index_of_model_names + i]].mean(),color_array[i],label= (proxy_model_names[first_index_of_model_names + i] + " RMSE"))
    print(model_data[model_names[first_index_of_model_names + i]].mean())

plt.legend(loc="best")





model_data = pd.read_csv("lmer_data_files/yan_best_spline_rmse.csv")
print("lmer_data_files/yan_best_spline_rmse.csv")

single = [3]
plt.plot(single, np.mean(model_data['tave_spline_evi_poly']),'bo')
# print(np.mean(model_data['tave_spline_evi_poly']))

single = [4]
plt.plot(single, np.mean(model_data['vpd_spline_evi_poly']),'go')
# print(np.mean(model_data['vpd_spline_evi_poly']))

model_data = pd.read_csv("lmer_data_files/yan_best_spline_rmse_loo.csv")
print("lmer_data_files/yan_best_spline_rmse_loo.csv")

single = [5]
plt.plot(single, np.mean(model_data['tave_spline_evi_poly']),'bv')
# print(np.mean(model_data['tave_spline_evi_poly']))

single = [6]
plt.plot(single, np.mean(model_data['vpd_spline_evi_poly']),'gv')
# print(np.mean(model_data['vpd_spline_evi_poly']))


single = [7]
model_data = pd.read_csv("lmer_data_files/vpd_evi_rmse_loo.csv")   
print("lmer_data_files/vpdave_evi_rmse_loo.csv")

model_names = list(model_data)
number_of_model_names = len(model_names) - 1
for i in range(number_of_model_names):    
    plt.plot(single, model_data[model_names[first_index_of_model_names + i]].mean(),color_array[i],label= (proxy_model_names[first_index_of_model_names + i] + " RMSE"))
    print(model_data[model_names[first_index_of_model_names + i]].mean())


single = [8]
model_data = pd.read_csv("lmer_data_files/vpd_evi_rmse_loo_square.csv")    
print("lmer_data_files/vpdave_evi_rmse_loo_square.csv")

model_names = list(model_data)
number_of_model_names = len(model_names) - 1
for i in range(number_of_model_names):    
    plt.plot(single, model_data[model_names[first_index_of_model_names + i]].mean(),color_array[i],label= (proxy_model_names[first_index_of_model_names + i] + " RMSE"))
    print(model_data[model_names[first_index_of_model_names + i]].mean())

single = [9]
model_data = pd.read_csv("lmer_data_files/vpd_precip_squared_ord_rmse.csv")    
print("lmer_data_files/vpd_precip_squared_ord_rmse.csv")

model_names = list(model_data)
number_of_model_names = len(model_names) - 1
for i in range(number_of_model_names):    
    plt.plot(single, model_data[model_names[first_index_of_model_names + i]].mean(),color_array[i],label= (proxy_model_names[first_index_of_model_names + i] + " RMSE"))
    print(model_data[model_names[first_index_of_model_names + i]].mean())


x = np.array([2,3,4,5,6,7,8,9])
my_xticks = ['mixed_vpd_evi','Yan1','Yan2','Yan1loo','Yan2loo','mixed_vpd_evi_linear_loo','mixed_vpd_evi_loo', 'mixed_vpd_evi_squared_loo','vpd_precip_squared']

plt.xticks(x, my_xticks)

plt.xlabel("Model Configurations")
plt.ylabel("Average RMSE based on Forward Prediction")
plt.show()

