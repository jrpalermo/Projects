# 🚇 London Underground Passenger Behavior Analysis

**Tools Used:** SQL  
**Topic:** Urban Transit | Human Behavior  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project explores survey-based passenger data from the **Transport for London (TfL) RODS** dataset. The aim is to analyze why, when, and where people use the **London Underground**, helping city planners and researchers understand ridership patterns across zones, purposes, and time of day.

## 🔍 Project Objectives

- Understand daily volume and peak travel periods across London Tube zones.
- Analyze origin and destination purposes for subway journeys.
- Examine how trip purpose changes by time of day and location.
- Investigate behavior patterns related to work, home, education, and tourism.

## 🧮 Key Analysis & Findings

- Calculated a total of **4.88 million daily subway journeys** across London.
- Found that **Zone 1 (central London)** is the origin for **51.7%** of all trips.
- Identified **PM Peak (4–7 PM)** as the most active time period, especially for returning commuters.
- **Home** was the most common journey origin; **Work** was the most common destination.
- Discovered expected travel patterns:
  - Trips from **Home peak in AM** (morning rush)
  - Trips from **Work peak in PM** (evening return)
- Zone-based purpose analysis revealed:
  - **Zone 1** had more trips **starting from Work** than Home — unlike all other zones.
- Focused on **Tourism-related trips**:
  - Most occurred during **Midday (10 AM–4 PM)**, as expected.
  - Tourist destinations are typically visited outside peak commuter hours.

## 🧰 Methods Used

- SQL aggregation (`SUM`, `GROUP BY`) to analyze counts by zone, purpose, and time
- Multi-level groupings (e.g., origin → destination → time)
- Sorting and comparisons to detect behavioral trends
- Logical filtering using conditions on `origin_purpose` and `destination_purpose`

## 💬 What I Learned

- How travel purpose and zone interact to shape transportation systems
- How to uncover behavioral trends using SQL alone
- How public datasets can guide urban policy and optimize transport capacity
