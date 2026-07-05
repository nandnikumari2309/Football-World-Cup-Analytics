/*
Project: Football Analytics
Topic: Subqueries
Database: FootballAnalytics
*/


-- Show matches where home score is above average

SELECT
    match_id,
    Home_Team,
    home_score

FROM dbo.football_matches

WHERE home_score >
(
    SELECT AVG(home_score)
    FROM dbo.football_matches
);


-- Find team with highest home score

SELECT
    Home_Team,
    home_score

FROM dbo.football_matches

WHERE home_score =
(
    SELECT MAX(home_score)
    FROM dbo.football_matches
);


-- Show matches of top scoring team

SELECT *
FROM dbo.football_matches

WHERE Home_Team =
(
    SELECT TOP 1 Home_Team
    FROM dbo.football_matches
    ORDER BY home_score DESC
);


-- Teams having average goals above overall average

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_matches

GROUP BY Home_Team

HAVING AVG(home_score) >
(
    SELECT AVG(home_score)
    FROM dbo.football_matches
);


-- Match having minimum home score

SELECT
    match_id,
    Home_Team,
    home_score

FROM dbo.football_matches

WHERE home_score =
(
    SELECT MIN(home_score)
    FROM dbo.football_matches
);


-- Show score difference from maximum score

SELECT
    match_id,
    Home_Team,
    home_score,

    (
        SELECT MAX(home_score)
        FROM dbo.football_matches
    ) - home_score AS Difference_From_Max

FROM dbo.football_matches;


-- Count matches played by each team

SELECT
    Home_Team,

    (
        SELECT COUNT(*)
        FROM dbo.football_matches f2
        WHERE f2.Home_Team = f1.Home_Team
    ) AS Matches_Played

FROM dbo.football_matches f1;


