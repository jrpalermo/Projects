-- 💻 Intel Data Center Energy Analysis

-- Net energy surplus by region
SELECT region, SUM(net_generation - demand) AS net_energy_surplus
FROM intel.energy_data
GROUP BY region
ORDER BY net_energy_surplus DESC;

-- Total renewable energy by region
SELECT region, SUM(hydropower_and_pumped_storage + wind + solar) AS total_renewables
FROM intel.energy_data
GROUP BY region
ORDER BY total_renewables DESC;

-- Renewable energy percentage by region
SELECT region,
       SUM(hydropower_and_pumped_storage + wind + solar) AS renewable_energy,
       SUM(hydropower_and_pumped_storage + wind + solar) / SUM(net_generation) * 100 AS renewable_pct
FROM intel.energy_data
GROUP BY region
ORDER BY renewable_pct DESC;

-- Energy generation by type (renewable vs fossil)
SELECT date, region,
       (hydropower_and_pumped_storage + wind + solar) AS energy_generated_mw,
       'renewable energy' AS energy_type
FROM intel.energy_data
UNION
SELECT date, region,
       (all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw,
       'fossil fuel' AS energy_type
FROM intel.energy_data;

-- Join power plants with energy data
SELECT p.plant_name, p.plant_code, p.region, p.state, p.primary_technology,
       e.energy_type, e.energy_generated_mw
FROM intel.power_plants p
JOIN intel.energy_by_plant e ON p.plant_code = e.plant_code;

-- Count of renewable energy plants by region
WITH joined AS (
  SELECT * FROM intel.power_plants p
  JOIN intel.energy_by_plant e ON p.plant_code = e.plant_code
)
SELECT region, COUNT(DISTINCT plant_code) AS renewable_plants
FROM joined
WHERE energy_type = 'renewable energy'
GROUP BY region
ORDER BY renewable_plants DESC;

-- Solar photovoltaic generation by region
WITH joined AS (
  SELECT * FROM intel.power_plants p
  JOIN intel.energy_by_plant e ON p.plant_code = e.plant_code
)
SELECT region,
       COUNT(DISTINCT plant_code) AS solar_plant_count,
       SUM(energy_generated_mw) AS solar_energy_total
FROM joined
WHERE primary_technology = 'Solar Photovoltaic'
GROUP BY region;

-- Filter to regions with at least 50 solar plants
WITH joined AS (
  SELECT * FROM intel.power_plants p
  JOIN intel.energy_by_plant e ON p.plant_code = e.plant_code
)
SELECT region,
       COUNT(DISTINCT plant_code) AS solar_plant_count,
       SUM(energy_generated_mw) AS solar_energy_total
FROM joined
WHERE primary_technology = 'Solar Photovoltaic'
GROUP BY region
HAVING COUNT(DISTINCT plant_code) >= 50;

-- Hourly renewable trends by region
SELECT region,
       DATE_PART('hour', time_at_end_of_hour) AS hour,
       SUM(hydropower_and_pumped_storage + wind + solar) AS hourly_renewables
FROM intel.energy_data
GROUP BY region, hour
ORDER BY region, hour;

-- Compare California and Northwest hourly renewable generation
SELECT region,
       DATE_PART('hour', time_at_end_of_hour) AS hour,
       SUM(hydropower_and_pumped_storage + wind + solar) AS hourly_renewables
FROM intel.energy_data
WHERE region IN ('California', 'Northwest')
GROUP BY region, hour
ORDER BY region, hour;
