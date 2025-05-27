-- 📺 ESPN Top Paid Athletes Analysis (2012–2022)

-- All athlete earnings data
SELECT * FROM forbes.highest_paid_athletes;

-- Total earnings by athlete (career earnings over 10 years)
SELECT name, SUM(total_earnings_mil) AS total_earned
FROM forbes.highest_paid_athletes
GROUP BY name
ORDER BY total_earned DESC;

-- Total combined earnings by year
SELECT year, SUM(total_earnings_mil) AS total_annual_earnings
FROM forbes.highest_paid_athletes
GROUP BY year
ORDER BY year;

-- Top 3 earners for selected years
SELECT year, name, total_earnings_mil
FROM forbes.highest_paid_athletes
WHERE rank IN (1, 2, 3) AND year IN (2015, 2018, 2021)
ORDER BY year, rank;

-- Highest-paid athlete per sport
SELECT sport, MAX(total_earnings_mil) AS max_earnings
FROM forbes.highest_paid_athletes
GROUP BY sport
ORDER BY max_earnings DESC;

-- Total earnings by sport (across all years)
SELECT sport, SUM(total_earnings_mil) AS total_earned
FROM forbes.highest_paid_athletes
GROUP BY sport
ORDER BY total_earned DESC;

-- Compare football and basketball earnings
SELECT sport, total_earnings_mil
FROM forbes.highest_paid_athletes
WHERE sport IN ('Association Football', 'Basketball');

-- Athletes earning more than $100M in a single year
SELECT name, year, total_earnings_mil
FROM forbes.highest_paid_athletes
WHERE total_earnings_mil > 100;
