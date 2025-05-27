# 🏀 ESPN Top Paid Athletes Analysis

**Tools Used:** SQL  
**Topic:** Sports Business | Athlete Earnings  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project analyzes 10 years of data from Forbes’ annual list of the **highest-paid athletes** to explore how athlete compensation has evolved from 2012 to 2022. The analysis looks at trends in earnings by sport, individual athletes, and annual spikes.

It also investigates whether specific sports dominate financially and identifies patterns in massive earnings events (e.g. boxing payouts or endorsement surges).

## 🔍 Project Objectives

- Calculate the **total career earnings** for top athletes from 2012 to 2022.
- Compare how different **sports categories** rank in overall earnings.
- Identify the **top 3 earners** in select years.
- Filter for **$100M+ payout years** to isolate major financial events.

## 🧮 Key Analysis & Findings

- Queried 110 records across 10 years of data.
- **Floyd Mayweather**, **Cristiano Ronaldo**, and **LeBron James** were among the highest cumulative earners.
- Earnings spiked in specific years tied to boxing megafights.
- **Basketball** had the most consistent representation across the top 10 lists, while **combat sports** dominated specific high-earning years.
- Identified all athletes with **$100M+ in a single year**, revealing rare and significant outliers.

## 🧰 Methods Used

- SQL aggregation (`SUM`, `MAX`) grouped by name, sport, and year
- Conditional filtering using `WHERE` and `IN`
- Sorting and ranking by `total_earnings_mil`
- Analysis of single-event peaks using filters (`> 100` million)

## 💬 What I Learned

- How to break down long-term earnings trends from structured financial data
- The power of SQL to isolate outliers and business anomalies
- That athlete earnings data offers both sports insights and broader financial context