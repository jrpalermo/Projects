-- 🏀 NBA Team Performance Analysis

-- Total games, first and last seasons
SELECT COUNT(*), MIN(season) AS first_season, MAX(season) AS last_season FROM nba.games;

-- Average scores and win rate
SELECT AVG(pts_home) AS avg_home_score, AVG(pts_away) AS avg_away_score, AVG(home_team_win) AS home_win_rate FROM nba.games;

-- Scores and win rate by season
SELECT season, AVG(pts_home) AS avg_home_score, AVG(pts_away) AS avg_away_score, AVG(home_team_win) AS home_win_rate
FROM nba.games GROUP BY season ORDER BY season;

-- Add 3-point shooting percentage trends
SELECT season, AVG(pct_3p_home) AS avg_3p_home, AVG(pct_3p_away) AS avg_3p_away
FROM nba.games GROUP BY season ORDER BY season;

-- Team-level performance grouped by season (home teams only)
SELECT season, team_home, AVG(home_team_win) AS home_win_rate, AVG(pct_3p_home) AS avg_3p_home
FROM nba.games GROUP BY team_home, season ORDER BY team_home, season;

-- Filter: Teams from 2018 onward with high 3P% (≥ 37%)
SELECT season, team_home, AVG(home_team_win) AS home_win_rate, AVG(pct_3p_home) AS avg_3p_home
FROM nba.games WHERE season >= '2018'
GROUP BY team_home, season HAVING AVG(pct_3p_home) >= 0.37;

-- Filter: High 3P% but losing record
SELECT season, team_home, AVG(home_team_win) AS home_win_rate, AVG(pct_3p_home) AS avg_3p_home
FROM nba.games WHERE season >= '2018'
GROUP BY team_home, season HAVING AVG(pct_3p_home) >= 0.37 AND AVG(home_team_win) < 0.5;

-- Filter: Low 3P% (≤ 34%) teams and those with losing records
SELECT season, team_home, AVG(home_team_win) AS home_win_rate, AVG(pct_3p_home) AS avg_3p_home
FROM nba.games WHERE season >= '2018'
GROUP BY team_home, season HAVING AVG(pct_3p_home) <= 0.34;

-- Summary table for home teams
SELECT season, team_home, AVG(pts_home) AS avg_home_points, AVG(pct_3p_home) AS avg_3p_home, SUM(home_team_win) AS total_wins
FROM nba.games GROUP BY team_home, season ORDER BY team_home, season;

-- Summary table for away teams
SELECT season, team_away, AVG(pts_away) AS avg_away_points, AVG(pct_3p_away) AS avg_3p_away, SUM(1 - home_team_win) AS total_wins
FROM nba.games GROUP BY team_away, season ORDER BY team_away, season;
