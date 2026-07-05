/*
Project: Football Analytics
Topic: Advanced Joins
Database: FootballAnalytics
*/


-- Compare matches played by same home team

SELECT
    A.Home_Team,
    A.match_id AS Match1,
    B.match_id AS Match2

FROM dbo.football_matches A
JOIN dbo.football_matches B

ON A.Home_Team = B.Home_Team
AND A.match_id < B.match_id;


-- Team performance summary

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played,
    SUM(home_score) AS Total_Goals,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_matches

GROUP BY Home_Team;


-- Top 5 scoring teams

SELECT TOP 5
    Home_Team,
    SUM(home_score) AS Total_Goals

FROM dbo.football_matches

GROUP BY Home_Team

ORDER BY Total_Goals DESC;


-- Teams with highest home wins

SELECT
    Home_Team,
    COUNT(*) AS Home_Wins

FROM dbo.football_matches

WHERE Match_Result = 'Home Win'

GROUP BY Home_Team

ORDER BY Home_Wins DESC;


-- Show all draw matches

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score

FROM dbo.football_matches

WHERE Match_Result = 'Draw';


-- Match with highest goal difference

SELECT TOP 1
    match_id,
    Home_Team,
    Away_Team,
    Goal_Difference

FROM dbo.football_matches

ORDER BY Goal_Difference DESC;


-- Overall tournament statistics

SELECT
    COUNT(*) AS Total_Matches,
    SUM(home_score + away_score) AS Total_Goals,
    AVG(home_score + away_score) AS Avg_Goals_Per_Match

FROM dbo.football_matches;