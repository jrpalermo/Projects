# Olympics Analysis - Jackson Palermo
# Analysis of Olympic medalists from 1896 to 2016

import pandas as pd

# Load the data
od = pd.read_csv('datasets/olympics.csv')

# Data inspection
print("Dataset shape:", od.shape)
print("\nColumns:", list(od.columns))
print("\nData types:")
print(od.info())

# Data cleaning
od = od.rename(columns={'NOC':'CountryCode', 'region':'Country'})
od = od.drop(columns=['Team'])

# Statistical analysis
youngest = od['Age'].min()
oldest = od['Age'].max()
medals = od['Medal'].value_counts()
events = od['Event'].nunique()
sports = od['Sport'].nunique()
average_age = od['Age'].mean()

print(f"\n=== OLYMPICS ANALYSIS RESULTS ===")
print(f"Youngest medalist age: {youngest}")
print(f"Oldest medalist age: {oldest}")
print(f"Average medalist age: {average_age:.2f}")
print(f"Number of unique events: {events}")
print(f"Number of unique sports: {sports}")
print(f"\nMedal distribution:")
print(medals)

# Analysis of oldest medalists
old10 = od.nlargest(10,'Age')
print(f"\nMost common sports among 10 oldest medalists:")
print(old10['Sport'].value_counts()) 