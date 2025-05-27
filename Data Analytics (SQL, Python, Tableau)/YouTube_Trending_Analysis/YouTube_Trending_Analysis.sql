-- 📹 YouTube Trending Video Analysis

-- Basic video metrics
SELECT title, channel_title, views, likes, dislikes, comment_count
FROM youtube.trending;

-- Most liked video
SELECT title FROM youtube.trending
ORDER BY likes DESC LIMIT 1;

-- Most disliked video
SELECT title FROM youtube.trending
ORDER BY dislikes DESC LIMIT 1;

-- Most commented video
SELECT title FROM youtube.trending
ORDER BY comment_count DESC LIMIT 1;

-- Top 10 most-commented videos
SELECT title, comment_count
FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 10;

-- Specific comment thresholds (10th, 100th, 1000th most-commented)
SELECT comment_count FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 1 OFFSET 9;

SELECT comment_count FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 1 OFFSET 99;

SELECT comment_count FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 1 OFFSET 999;
