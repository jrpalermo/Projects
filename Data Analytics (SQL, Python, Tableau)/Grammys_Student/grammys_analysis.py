# The GRAMMYs Project - Website Audience Analysis - Jackson Palermo
# Analysis of web analytics data for The Recording Academy's websites

import pandas as pd
import numpy as np
import plotly.express as px

# Format numbers to two decimal places
pd.set_option('display.float_format', lambda x: '%.2f' % x)

# Load data
full_df = pd.read_csv('datasets/grammy_live_web_analytics.csv')
rec_academy = pd.read_csv('datasets/ra_live_web_analytics.csv')

print("=== GRAMMYS WEBSITE ANALYSIS ===")
print("Full dataset shape:", full_df.shape)
print("Recording Academy dataset shape:", rec_academy.shape)

# Preview data
print("\nFull dataset preview:")
print(full_df.head())
print("\nRecording Academy dataset preview:")
print(rec_academy.head())

# Create line chart of visitors over time
line = px.line(full_df, x='date', y='visitors')
line.show()

# Compare average visitors on awards night vs regular days
group = full_df.groupby('awards_night')['visitors'].mean()
print(f"\nAverage visitors on regular days: {group[0]:,.0f}")
print(f"Average visitors on awards night: {group[1]:,.0f}")
print(f"Difference: {group[1] - group[0]:,.0f} visitors")

# Split data for website domain analysis
combined_site = full_df[full_df['date'] < '2022-02-01'].copy()
grammys = full_df[full_df['date'] >= '2022-02-01'].copy()

print(f"\nCombined site data shape: {combined_site.shape}")
print(f"Grammys site data shape: {grammys.shape}")

# Analysis insights
print("\n=== KEY INSIGHTS ===")
print("1. Website traffic spikes dramatically during Grammy Awards")
print("2. The split into two domains allows for targeted audience analysis")
print("3. Challenge: Maintain user engagement year-round") 