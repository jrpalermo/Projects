# NASA Planetary Mystery

## Overview
This project investigates a planetary science mystery using NASA weather data. The goal is to analyze the data, clean it, and use exploratory analysis and visualization to deduce the identity of the mystery planet.

## Dataset
- **Source:** NASA planetary weather dataset (`planet_weather.csv`)
- **Columns:** 
  - `id`, `terrestrial_date`, `sol`, `ls`, `month`, `min_temp`, `max_temp`, `pressure`, `wind_speed`, `atmo_opacity`

## Tools Used
- Python (`pandas`, `plotly.express`)
- Data cleaning and exploratory data analysis

## Key Tasks
- Data inspection and cleaning (removing columns with missing or redundant data)
- Groupby analysis of temperature and pressure by month
- Visualization of trends using bar and line charts (Plotly)
- Scientific reasoning to hypothesize the planet's identity

## Insights
- Identified patterns in temperature and pressure cycles
- Used data-driven reasoning to estimate the length of a year and deduce the likely planet

---

## Visualizations

![Bar chart of the average atmospheric pressure by month](bar%20chart%20of%20the%20average%20atmospheric%20pressure%20by%20month)\
*Bar chart showing the average atmospheric pressure for each month on the mystery planet. This helps reveal seasonal pressure cycles.*

![Line chart of the daily atmospheric pressure by terrestrial date](line%20chart%20of%20the%20daily%20atmospheric%20pressure%20by%20terrestrial%20date)\
*Line chart displaying daily atmospheric pressure over time, highlighting periodic fluctuations and annual cycles.*

![Line chart of the daily minimum temp](line%20chart%20of%20the%20daily%20minimum%20temp)\
*Line chart showing the daily minimum temperature, which helps identify the coldest and warmest periods on the planet.*

---
*Project by Jackson Palermo* 
