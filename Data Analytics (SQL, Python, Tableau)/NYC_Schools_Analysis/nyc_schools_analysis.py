# NYC Schools Analysis - Clean Python Script
# Author: Jackson Palermo

import pandas as pd
import plotly.express as px

# Read the CSV file into a pandas DataFrame
dataframe = pd.read_csv('datasets/schools.csv')

# Preview the first five rows
print(dataframe.head(5))

# Preview the last five rows
print(dataframe.tail(5))

# List the columns of the DataFrame
print(dataframe.columns)

# Examine the index of the DataFrame
print(dataframe.index)

# Examine the numbers of rows and columns
print(dataframe.shape)

# View 15 randomly chosen rows
print(dataframe.sample(15))

# Call .info() for column data types and other info
print(dataframe.info())

# Call .describe() to view a statistical summary of the DataFrame
print(dataframe.describe())

# Plot the data showing the total student enrollment
histogram = px.histogram(dataframe, 'total_enrollment')
histogram.show()

# Plot the data showing the % of students with disabilities in schools
histogram = px.histogram(dataframe, 'percent_students_with_disabilities')
histogram.show()

# Plot the data showing the % of students who are learning English as a second language in schools
histogram = px.histogram(dataframe, 'percent_english_learners')
histogram.show()

# Plot the data showing the % of students whose families are below the poverty line in schools
histogram = px.histogram(dataframe, 'percent_poverty')
histogram.show()

# Create a scatter plot of percent_english_learners vs percent_poverty
scatter = px.scatter(dataframe, 'percent_english_learners', 'percent_poverty')
scatter.show()

# Correlation analysis
print(dataframe.corr()) 