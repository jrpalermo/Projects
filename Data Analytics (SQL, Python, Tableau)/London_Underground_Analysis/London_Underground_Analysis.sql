-- 🚇 London Underground Passenger Behavior Analysis

-- Total daily journeys
SELECT SUM(daily_journeys) FROM tfl.rods;

-- Daily journeys by entry zone
SELECT entry_zone, SUM(daily_journeys) FROM tfl.rods GROUP BY entry_zone ORDER BY entry_zone;

-- Daily journeys by time period
SELECT time_period, SUM(daily_journeys) FROM tfl.rods GROUP BY time_period ORDER BY SUM(daily_journeys) DESC;

-- Journey count by origin purpose
SELECT origin_purpose, SUM(daily_journeys) FROM tfl.rods GROUP BY origin_purpose ORDER BY SUM(daily_journeys) DESC;

-- Journey count by origin and destination purpose pair
SELECT origin_purpose, destination_purpose, SUM(daily_journeys) FROM tfl.rods
GROUP BY origin_purpose, destination_purpose ORDER BY SUM(daily_journeys) DESC;

-- Origin purpose and time of day
SELECT origin_purpose, time_period, SUM(daily_journeys) FROM tfl.rods
GROUP BY origin_purpose, time_period ORDER BY origin_purpose, time_period;

-- Origin purpose by entry zone
SELECT entry_zone, origin_purpose, SUM(daily_journeys) FROM tfl.rods
GROUP BY entry_zone, origin_purpose ORDER BY entry_zone, SUM(daily_journeys) DESC;

-- Tourism-related journeys by time period
SELECT origin_purpose, destination_purpose, time_period, SUM(daily_journeys) FROM tfl.rods
WHERE origin_purpose = 'Tourist' OR destination_purpose = 'Tourist'
GROUP BY origin_purpose, destination_purpose, time_period ORDER BY SUM(daily_journeys) DESC;