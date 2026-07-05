/*
Project: Football Analytics
Topic: GROUP BY
Database: FootballAnalytics
*/


-- Count matches played by each home team

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played
FROM dbo.football_matches
GROUP BY Home_Team;


-- Count matches played by each home team sorted by highest count

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played
FROM dbo.football_matches
GROUP BY Home_Team
ORDER BY Matches_Played DESC;


-- Calculate average home goals scored by each team

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Home_Goals
FROM dbo.football_matches
GROUP BY Home_Team
ORDER BY Avg_Home_Goals DESC;


-- Calculate total home goals scored by each team

SELECT
    Home_Team,
    SUM(home_score) AS Total_Home_Goals
FROM dbo.football_matches
GROUP BY Home_Team
ORDER BY Total_Home_Goals DESC;


-- Find highest home score achieved by each team

SELECT
    Home_Team,
    MAX(home_score) AS Highest_Home_Score
FROM dbo.football_matches
GROUP BY Home_Team
ORDER BY Highest_Home_Score DESC;