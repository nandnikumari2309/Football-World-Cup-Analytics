<<<<<<< HEAD
/*
Project: Football Analytics
Topic: SQL Basics - SELECT Statement
Database: FootballAnalytics
Author: Kumar
Date: 2026-07-05
*/

USE FootballAnalytics;
GO


-- Display first 10 records from football matches table
SELECT TOP 10 *
FROM dbo.football_final_dataset;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_final_dataset;



-- Count total matches available in dataset

SELECT COUNT(*) AS Total_Matches
FROM dbo.football_final_dataset;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
=======
/*
Project: Football Analytics
Topic: SQL Basics - SELECT Statement
Database: FootballAnalytics
Author: Kumar
Date: 2026-07-05
*/

USE FootballAnalytics;
GO


-- Display first 10 records from football matches table
SELECT TOP 10 *
FROM dbo.football_final_dataset;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_final_dataset;



-- Count total matches available in dataset

SELECT COUNT(*) AS Total_Matches
FROM dbo.football_final_dataset;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
>>>>>>> b0c2e16c875d4670cf09eb091a1b5904f49b3158
FROM dbo.football_final_dataset;