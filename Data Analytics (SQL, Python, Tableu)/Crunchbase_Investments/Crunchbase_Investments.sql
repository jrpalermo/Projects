-- 💼 Crunchbase Startup Investments Analysis

-- Top 12 most funded companies
SELECT name, category_code, status, funding_total_usd FROM crunchbase.companies
WHERE funding_total_usd IS NOT NULL ORDER BY funding_total_usd DESC LIMIT 12;

-- Top funded closed companies
SELECT name, category_code, status, funding_total_usd FROM crunchbase.companies
WHERE funding_total_usd IS NOT NULL AND status = 'closed'
ORDER BY funding_total_usd DESC LIMIT 12;

-- All cleantech companies
SELECT name, category_code, status FROM crunchbase.companies
WHERE category_code = 'cleantech';

-- Closed cleantech companies
SELECT name, category_code, status FROM crunchbase.companies
WHERE category_code = 'cleantech' AND status = 'closed';

-- Cleantech companies with "solar", "power", or "energy" in the name
SELECT name, category_code, status FROM crunchbase.companies
WHERE category_code = 'cleantech'
AND (name ILIKE '%solar%' OR name ILIKE '%power%' OR name ILIKE '%energy%');