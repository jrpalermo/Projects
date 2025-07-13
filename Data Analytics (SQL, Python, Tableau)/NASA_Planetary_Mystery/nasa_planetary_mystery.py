# NASA Planetary Mystery - Clean Python Script
# Author: Jackson Palermo

import pandas as pd
import plotly.express as px

# Load planet_weather.csv data from datasets folder
weather = pd.read_csv('datasets/planet_weather.csv')

# Preview the data
print(weather.head())

# How many rows and columns are there in the dataset?
print(weather.shape)

# What are the names of all the columns?
print(weather.columns)

# What is the data type of each column?
print(weather.dtypes)

# How many null values are there in each column?
print(weather.isnull().sum())

# Provide a statistical summary of the DataFrame
print(weather.describe())

# Data Cleaning
# Delete wind_speed column, which is filled with null values
weather = weather.drop('wind_speed', axis=1)
print(weather.columns)

# How many unique values are there in the atmo_opacity column?
print(weather['atmo_opacity'].value_counts())

# Delete atmo_opacity column, which mostly contains identical values
weather = weather.drop('atmo_opacity', axis=1)
print(weather.columns)

# Data Analysis & Visualization
# How many months are there on this planet?
print(weather['month'].nunique())

# What is the average min_temp for each month?
avg_min_tmp = weather.groupby('month')['min_temp'].mean()
print(avg_min_tmp)

# Plot a bar chart of the average min_temp by month
avg_min_tmp_bar = px.bar(avg_min_tmp, labels={'x': 'Month', 'y': 'Average Min Temp'})
avg_min_tmp_bar.show()

# What is the average pressure for each month?
avg_p_month = weather.groupby('month')['pressure'].mean()
print(avg_p_month)

# Create a bar chart of the average atmospheric pressure by month
avg_p_month_bar = px.bar(avg_p_month, labels={'x': 'Month', 'y': 'Average Pressure'})
avg_p_month_bar.show()

# Plot a line chart of the daily atmospheric pressure by terrestrial date
DAPT = px.line(weather, x = 'terrestrial_date', y = 'pressure', title = 'Daily Atmospheric Pressure by Terrestrial Date')
DAPT.show()

# Plot a line chart the daily minimum temp
daily_min_tmp = px.line(weather, x = 'terrestrial_date', y = 'min_temp')
daily_min_tmp.show() 