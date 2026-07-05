/*
Project: Football Analytics
Topic: Stored Procedures
Database: FootballAnalytics
*/


-- Create procedure to display all matches

CREATE PROCEDURE sp_AllMatches
AS
BEGIN

    SELECT *
    FROM dbo.football_matches;

END;


-- Execute stored procedure

EXEC sp_AllMatches;


-- Procedure to show home wins

CREATE PROCEDURE sp_HomeWins
AS
BEGIN

    SELECT *
    FROM dbo.football_matches
    WHERE Match_Result = 'Home Win';

END;


-- Execute home wins procedure

EXEC sp_HomeWins;


-- Procedure to search team

CREATE PROCEDURE sp_SearchTeam
    @TeamName NVARCHAR(50)

AS
BEGIN

    SELECT
        Home_Team,
        Away_Team,
        home_score,
        away_score

    FROM dbo.football_matches

    WHERE Home_Team = @TeamName;

END;


-- Search specific team

EXEC sp_SearchTeam @TeamName = 'Mexico';


-- Show all stored procedures

SELECT name
FROM sys.procedures;