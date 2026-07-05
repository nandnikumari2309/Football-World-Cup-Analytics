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
FROM dbo.football_matches;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_matches;



-- Count total matches available in dataset

SELECT COUNT(*) AS Total_Matches
FROM dbo.football_matches;


-- Show home team, away team and final scores

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_matches;