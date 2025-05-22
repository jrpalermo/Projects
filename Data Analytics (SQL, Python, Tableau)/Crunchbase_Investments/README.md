# 💼 Crunchbase Startup Investments Analysis

**Tools Used:** SQL  
**Topic:** Venture Capital | Startup Funding  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project simulates the role of a data analyst at a global venture capital firm. Using a dataset of over 27,000 startups from Crunchbase, the goal was to explore how funding is distributed across companies, which industries receive the most capital, and which sectors have higher closure rates. Insights drawn from this analysis can help investors make smarter, data-informed decisions when assessing the startup landscape.

## 🔍 Project Objectives

- Identify the most highly funded companies overall and by company status.
- Compare successful and failed companies in terms of funding.
- Explore failure rates within the cleantech sector.
- Detect naming trends that may indicate product focus or market branding.

## 🧮 Key Analysis & Findings

- Queried over 27,000 records to find the **top-funded companies**, with Clearwire raising **$5.7B** — **5.7× more** than Blackberry, which ranked 12th.
- Discovered that **Abound Solar**, a cleantech company, received **$510M** in funding but ultimately shut down.
- Among the **top 12 closed companies**, **6 were from the cleantech sector**, suggesting potential volatility or overinvestment in that space.
- Found **898 cleantech companies**, of which **7.01% had closed**, slightly below the global closure rate of **7.9%**.
- Used SQL `ILIKE` and wildcards to identify **275 cleantech companies** with names containing **"solar"**, **"power"**, or **"energy"**, showing a strong thematic trend in branding and focus.

## 🧰 Methods Used

- SQL filtering using `WHERE`, `AND`, `OR`, `ILIKE`, and NULL checks
- Sorting and limiting query output using `ORDER BY` and `LIMIT`
- Aggregation with `COUNT` and percentage calculation
- Categorical breakdown using `category_code` and `status` fields

## 💬 What I Learned

- How to handle and analyze real-world investment data using SQL
- The importance of investigating both successful and failed companies
- How to use filtering and string pattern matching for meaningful business insights
