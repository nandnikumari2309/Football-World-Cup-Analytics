/*
Project: Football Analytics
Topic: Common Table Expressions (CTE)
Database: FootballAnalytics
*/


-- Create a CTE for match results

WITH MatchResults AS
(
    SELECT
        Home_Team,
        Away_Team,
        home_score,
        away_score
    FROM dbo.football_matches
)

SELECT *
FROM MatchResults;


-- Display only home wins using CTE

WITH HomeWins AS
(
    SELECT
        Home_Team,
        Away_Team,
        home_score,
        away_score
    FROM dbo.football_matches
    WHERE home_score > away_score
)

SELECT *
FROM HomeWins;


-- Display matches with more than 4 total goals

WITH HighScoringMatches AS
(
    SELECT
        Home_Team,
        Away_Team,
        Total_Goals
    FROM dbo.football_matches
    WHERE Total_Goals > 4
)

SELECT *
FROM HighScoringMatches;


-- Calculate average home goals by team using CTE

WITH TeamGoals AS
(
    SELECT
        Home_Team,
        AVG(home_score) AS Avg_Home_Goals
    FROM dbo.football_matches
    GROUP BY Home_Team
)

SELECT *
FROM TeamGoals
ORDER BY Avg_Home_Goals DESC;


-- Show teams averaging more than 1.5 home goals

WITH TeamGoals AS
(
    SELECT
        Home_Team,
        AVG(home_score) AS Avg_Home_Goals
    FROM dbo.football_matches
    GROUP BY Home_Team
)

SELECT *
FROM TeamGoals
WHERE Avg_Home_Goals > 1.5;