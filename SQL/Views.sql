/*
Project: Football Analytics
Topic: Views
Database: FootballAnalytics
*/


-- Create a basic view for match details

CREATE VIEW vw_MatchDetails AS

SELECT
    match_id,
    Home_Team,
    Away_Team,
    home_score,
    away_score,
    Match_Result

FROM dbo.football_matches;


-- Display data from view

SELECT *
FROM vw_MatchDetails;


-- Create view for home team wins

CREATE VIEW vw_HomeWins AS

SELECT
    match_id,
    Home_Team,
    Away_Team,
    home_score,
    away_score

FROM dbo.football_matches

WHERE Match_Result = 'Home Win';


-- Show home wins

SELECT *
FROM vw_HomeWins;


-- Create view for average goals by team

CREATE VIEW vw_AvgGoals AS

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Home_Goals

FROM dbo.football_matches

GROUP BY Home_Team;


-- Show average goals

SELECT *
FROM vw_AvgGoals;


-- Display all views in database

SELECT TABLE_NAME

FROM INFORMATION_SCHEMA.VIEWS;