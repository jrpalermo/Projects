-- 🚗 California Traffic Collisions Analysis

-- Count of at-fault parties
SELECT at_fault, COUNT(*) FROM switrs.parties GROUP BY at_fault;

-- At-fault parties under alcohol influence
SELECT COUNT(*) FROM switrs.parties WHERE party_sobriety = 'B' AND at_fault = 'Y';

-- At-fault parties with inattention (corrected logic)
SELECT COUNT(*) FROM switrs.parties WHERE at_fault = 'Y' AND (oaf_1 = 'F' OR oaf_2 = 'F');

-- Collisions grouped by day of the week
SELECT day_of_week, COUNT(*) FROM switrs.collisions GROUP BY day_of_week;

-- Total records from inner join of collisions and parties
SELECT COUNT(*) FROM switrs.collisions
INNER JOIN switrs.parties ON switrs.collisions.case_id = switrs.parties.case_id;

-- Alcohol-related collisions by weekday
SELECT day_of_week, COUNT(*) FROM switrs.collisions
INNER JOIN switrs.parties ON switrs.collisions.case_id = switrs.parties.case_id
WHERE at_fault = 'Y' AND party_sobriety = 'B'
GROUP BY day_of_week;

-- Inattention-related collisions by weekday
SELECT day_of_week, COUNT(*) FROM switrs.collisions
INNER JOIN switrs.parties ON switrs.collisions.case_id = switrs.parties.case_id
WHERE at_fault = 'Y' AND (oaf_1 = 'F' OR oaf_2 = 'F')
GROUP BY day_of_week;

-- Summary of collisions by inattention vs. cell phone
SELECT COUNT(*) AS total_accidents,
       COUNT(CASE WHEN oaf_1 = 'F' OR oaf_2 = 'F' THEN 1 END) AS inattention_accidents,
       COUNT(CASE WHEN sp_info_2 IN ('1', '2', 'B') THEN 1 END) AS cellphone_accidents
FROM switrs.parties;