/*
Project: Football Analytics
Final Business Insights Report
Database: FootballAnalytics
*/


-- Total matches played

SELECT COUNT(*) AS Total_Matches
FROM dbo.football_matches;


-- Total goals scored

SELECT
    SUM(home_score + away_score) AS Total_Goals
FROM dbo.football_matches;


-- Average goals per match

SELECT
    AVG(home_score + away_score) AS Avg_Goals_Per_Match
FROM dbo.football_matches;


-- Top scoring teams

SELECT TOP 10
    Home_Team,
    SUM(home_score) AS Total_Goals

FROM dbo.football_matches

GROUP BY Home_Team

ORDER BY Total_Goals DESC;


-- Teams with most home wins

SELECT
    Home_Team,
    COUNT(*) AS Wins

FROM dbo.football_matches

WHERE Match_Result = 'Home Win'

GROUP BY Home_Team

ORDER BY Wins DESC;


-- Highest average scoring teams

SELECT TOP 10
    Home_Team,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_matches

GROUP BY Home_Team

ORDER BY Avg_Goals DESC;


-- Highest scoring match

SELECT TOP 1
    Home_Team,
    Away_Team,
    home_score,
    away_score,
    (home_score + away_score) AS Total_Goals

FROM dbo.football_matches

ORDER BY Total_Goals DESC;


-- Lowest scoring match

SELECT TOP 1
    Home_Team,
    Away_Team,
    home_score,
    away_score

FROM dbo.football_matches

ORDER BY (home_score + away_score);


-- Number of draw matches

SELECT
    COUNT(*) AS Draw_Matches

FROM dbo.football_matches

WHERE Match_Result = 'Draw';


-- Home team win percentage

SELECT
(
    COUNT(CASE WHEN Match_Result = 'Home Win' THEN 1 END) * 100.0
    / COUNT(*)
) AS Home_Win_Percentage

FROM dbo.football_matches;


-- Matches with biggest goal difference

SELECT TOP 10
    Home_Team,
    Away_Team,
    Goal_Difference

FROM dbo.football_matches

ORDER BY Goal_Difference DESC;


-- Matches played by month

SELECT
    Match_Month,
    COUNT(*) AS Matches

FROM dbo.football_matches

GROUP BY Match_Month

ORDER BY Matches DESC;


-- Teams scoring most goals

SELECT TOP 10
    Home_Team,
    SUM(home_score) AS Goals

FROM dbo.football_matches

GROUP BY Home_Team

ORDER BY Goals DESC;


-- Teams with more than 3 matches and average goals above 1

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_matches

GROUP BY Home_Team

HAVING COUNT(*) > 3
AND AVG(home_score) > 1;


-- Final tournament summary

SELECT
    COUNT(*) AS Total_Matches,
    SUM(home_score + away_score) AS Total_Goals,
    AVG(home_score + away_score) AS Avg_Goals_Per_Match,
    MAX(home_score + away_score) AS Highest_Scoring_Game

FROM dbo.football_matches;