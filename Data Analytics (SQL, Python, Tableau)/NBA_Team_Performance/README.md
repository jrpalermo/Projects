# 🏀 NBA Team Performance Analysis

**Tools Used:** SQL  
**Topic:** Sports Analytics | Basketball (NBA)  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project analyzes NBA game data from **2004 to 2020**, exploring trends in team scoring, win rates, and 3-point shooting efficiency. The goal was to understand how the game has evolved over the years and identify performance metrics that correlate with team success — crucial insights for coaches, analysts, and fans alike.

## 🔍 Project Objectives

- Examine how average points scored by home and away teams changed over time.
- Analyze whether home-court advantage exists and if it’s consistent.
- Investigate whether a higher 3-point shooting percentage translates to more wins.
- Group and compare performance by team and season to detect patterns in success or decline.

## 🧮 Key Analysis & Findings

- Analyzed **23,000+ games** from 2004–2020 NBA seasons.
- Found that average scoring has steadily increased over the years:
  - **2004–05**: Avg home score = ~98.6 | Avg away score = ~95.4
  - **2020–21**: Avg home score = ~112.4 | Avg away score = ~111.2
- Confirmed a **home team win rate of ~58.9%**, validating the presence of home-court advantage.
- 3-point shot percentages remained relatively stable (~35.4%), but:
  - Teams with **≥ 37% 3P accuracy** often had **higher win rates**.
  - Only **2 teams** had a high 3P rate and still a losing record (win % < 50).
  - **11 teams** shot ≤ 34% from 3 and **7 of them** had losing records.
- Concluded that while **3-point efficiency** is a strong success indicator, it is not the sole factor — team defense, turnovers, and pace also play key roles.

## 🧰 Methods Used

- SQL aggregation (`AVG`, `SUM`) and grouping (`GROUP BY season`, `team_home`)
- Calculated win rates using `home_team_win` boolean field
- Used `HAVING` filters to find performance thresholds (e.g., ≥ 37% 3P)
- Created summary tables for home and away team performance across seasons

## 💬 What I Learned

- How to derive actionable insights from large structured sports datasets
- The power of SQL in segmenting and comparing team performance metrics
- That basketball success is multifaceted — shooting is key, but not everything
