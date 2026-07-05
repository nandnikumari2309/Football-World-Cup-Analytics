/*
Project: Football Analytics
Topic: CASE Statements
Database: FootballAnalytics
*/


-- Categorize each match as Home Win, Away Win or Draw

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score,
    CASE
        WHEN home_score > away_score THEN 'Home Win'
        WHEN home_score < away_score THEN 'Away Win'
        ELSE 'Draw'
    END AS Match_Result
FROM dbo.football_matches;


-- Categorize matches based on total goals

SELECT
    Home_Team,
    Away_Team,
    Total_Goals,
    CASE
        WHEN Total_Goals >= 5 THEN 'High Scoring'
        WHEN Total_Goals >= 3 THEN 'Medium Scoring'
        ELSE 'Low Scoring'
    END AS Goal_Category
FROM dbo.football_matches;


-- Categorize home team performance

SELECT
    Home_Team,
    home_score,
    CASE
        WHEN home_score >= 3 THEN 'Excellent'
        WHEN home_score >= 2 THEN 'Good'
        WHEN home_score = 1 THEN 'Average'
        ELSE 'Poor'
    END AS Performance_Rating
FROM dbo.football_matches;


-- Count matches by result category

SELECT
    CASE
        WHEN home_score > away_score THEN 'Home Win'
        WHEN home_score < away_score THEN 'Away Win'
        ELSE 'Draw'
    END AS Match_Result,
    COUNT(*) AS Total_Matches
FROM dbo.football_matches
GROUP BY
    CASE
        WHEN home_score > away_score THEN 'Home Win'
        WHEN home_score < away_score THEN 'Away Win'
        ELSE 'Draw'
    END;


    -- Count matches by goal category

SELECT
    CASE
        WHEN Total_Goals >= 5 THEN 'High Scoring'
        WHEN Total_Goals >= 3 THEN 'Medium Scoring'
        ELSE 'Low Scoring'
    END AS Goal_Category,
    COUNT(*) AS Total_Matches
FROM dbo.football_matches
GROUP BY
    CASE
        WHEN Total_Goals >= 5 THEN 'High Scoring'
        WHEN Total_Goals >= 3 THEN 'Medium Scoring'
        ELSE 'Low Scoring'
    END;


