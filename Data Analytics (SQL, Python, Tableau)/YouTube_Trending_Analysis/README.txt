# 📹 YouTube Trending Video Analysis

**Tools Used:** SQL  
**Topic:** Social Media | Content Engagement  
**Badge:** 🏅 SQL Specialist

## 📘 Overview

This project explores engagement metrics from **YouTube’s trending videos**, including likes, dislikes, and comment counts. The analysis identifies the most engaged-with content and quantifies how engagement scales across popularity levels.

The goal was to understand which videos provoke strong viewer reactions and how deeply audiences interact through comments.

## 🔍 Project Objectives

- Identify the **most liked, disliked, and commented** videos.
- Rank videos by comment count to find **top 10** and **key thresholds** (10th, 100th, 1000th).
- Understand how comment engagement scales across popular videos.

## 🧮 Key Analysis & Findings

- Queried engagement data across thousands of trending videos.
- Found the **#1 most liked**, **#1 most disliked**, and **#1 most commented** videos using SQL ranking.
- Created milestone checkpoints:
  - 10th most-commented video: ~63,000 comments
  - 100th: ~21,000
  - 1000th: ~4,500
- Showed that a long-tail distribution exists — top comments drop off steeply after the top 100.

## 🧰 Methods Used

- Sorting with `ORDER BY` and pagination with `LIMIT` and `OFFSET`
- Filtering to extract top-N thresholds
- Comment distribution analysis through descending rank slicing

## 💬 What I Learned

- How to analyze engagement metrics at scale using SQL
- That viewer interaction on YouTube follows a steep drop-off pattern
- How to use simple ranking logic to isolate key performers