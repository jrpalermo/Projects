# 💻 Intel Data Center Energy Analysis

**Tools Used:** SQL  
**Topic:** Sustainability | Energy Infrastructure  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project analyzes **regional power generation data** related to Intel's data centers across the U.S. It explores how much energy is produced, what portion is renewable, and which regions are leading in solar photovoltaic technology.

The project includes plant-level analysis and hourly production trends for selected regions.

## 🔍 Project Objectives

- Measure **net energy surplus** by region (generation vs. demand).
- Calculate each region’s **renewable energy percentage**.
- Join power plant and generation data to analyze output by technology.
- Identify top regions for **solar energy capacity** and plant counts.

## 🧮 Key Analysis & Findings

- Queried large-scale energy logs and matched plant-level data by `plant_code`.
- **Pacific Northwest and California** regions showed the highest renewable output.
- Identified **regions with 50+ solar photovoltaic plants**, showing state-level solar investment.
- Built a **unified energy log** (renewable + fossil) using `UNION` to simplify energy type analysis.
- Tracked **hourly renewable energy trends**, confirming peak generation times in California and Northwest around **midday**.

## 🧰 Methods Used

- SQL joins (`JOIN`) and conditional aggregates
- Grouping and filtering with `GROUP BY`, `HAVING`
- Custom time slicing using `DATE_PART('hour', timestamp)`
- CTEs and unions for combining energy source data

## 💬 What I Learned

- How to transform raw energy data into decision-ready insights
- The impact of SQL `JOIN`s and CTEs when analyzing facility-level operations
- That energy generation patterns can highlight sustainability strengths by region