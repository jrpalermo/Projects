# 🚗 California Traffic Collisions Analysis

**Tools Used:** SQL, Tableau  
**Topic:** Public Safety | Transportation  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project explores traffic collision data from the **California Highway Patrol’s SWITRS dataset** to support a journalist reporting on crash trends related to **alcohol and distracted driving**. It integrates SQL for data extraction and Tableau for data visualization.

The analysis reveals when and how dangerous driving behaviors tend to occur — including time of day, day of week, and other contributing factors — to provide a data-driven narrative around road safety.

## 🔍 Project Objectives

- Identify how frequently alcohol and inattention contribute to vehicle collisions.
- Analyze how these types of collisions are distributed by **day of week** and **hour of day**.
- Join multiple tables to reveal richer accident-level insights.
- Use **Tableau** to visually represent when alcohol- and distraction-related accidents happen most often.

## 🧮 Key Analysis & Findings

- Queried **940,000+ records** to identify:
  - **33,512** parties found at fault while under the influence of alcohol.
  - **18,454** parties found at fault where inattention (e.g. cell phone use) was a factor.
- Alcohol-related crashes peaked on **Saturdays**, while distraction-related crashes peaked on **Fridays**.
- Tableau dashboard showed:
  - Morning and evening rush hours (6–9 AM and 1–7 PM) saw the highest overall crash volumes.
  - Alcohol-related crashes surged during **late-night and early-morning hours**.
  - Inattention-related crashes spiked in the **mid- to late afternoon** (3–5 PM).
- Explored cell phone usage during crashes by querying `sp_info_2`, identifying known use in hundreds of inattention cases.

## 🧰 Methods Used

- SQL joins between `collisions` and `parties` tables using `case_id`
- Aggregation and conditional filtering (`GROUP BY`, `WHERE`, `AND`, `OR`)
- String-based logic for factor detection (`sp_info_2`)
- Tableau for time-series bar charts and conditional filters

## 💬 What I Learned

- The importance of joining multiple datasets to uncover deeper patterns
- How to visualize accident trends to support storytelling and decision-making
- How real-world issues like distracted driving can be quantified with data

## 📊 **View Tableau Dashboard:**  
[California Traffic Collision Analysis – Tableau Workbook](https://public.tableau.com/views/1M6_TrafficCollisonsinCalifornia-Jackson-Palermo/Instructions?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
