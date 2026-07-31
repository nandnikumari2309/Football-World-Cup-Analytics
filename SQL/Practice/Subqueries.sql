<<<<<<< HEAD
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

FROM dbo.football_final_dataset

WHERE home_score >
(
    SELECT AVG(home_score)
    FROM dbo.football_final_dataset
);


-- Find team with highest home score

SELECT
    Home_Team,
    home_score

FROM dbo.football_final_dataset

WHERE home_score =
(
    SELECT MAX(home_score)
    FROM dbo.football_final_dataset
);


-- Show matches of top scoring team

SELECT *
FROM dbo.football_final_dataset

WHERE Home_Team =
(
    SELECT TOP 1 Home_Team
    FROM dbo.football_final_dataset
    ORDER BY home_score DESC
);


-- Teams having average goals above overall average

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_final_dataset

GROUP BY Home_Team

HAVING AVG(home_score) >
(
    SELECT AVG(home_score)
    FROM dbo.football_final_dataset
);


-- Match having minimum home score

SELECT
    match_id,
    Home_Team,
    home_score

FROM dbo.football_final_dataset

WHERE home_score =
(
    SELECT MIN(home_score)
    FROM dbo.football_final_dataset
);


-- Show score difference from maximum score

SELECT
    match_id,
    Home_Team,
    home_score,

    (
        SELECT MAX(home_score)
        FROM dbo.football_final_dataset
    ) - home_score AS Difference_From_Max

FROM dbo.football_final_dataset;


-- Count matches played by each team

SELECT
    Home_Team,

    (
        SELECT COUNT(*)
        FROM dbo.football_final_dataset f2
        WHERE f2.Home_Team = f1.Home_Team
    ) AS Matches_Played

FROM dbo.football_final_dataset f1;


=======
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

FROM dbo.football_final_dataset

WHERE home_score >
(
    SELECT AVG(home_score)
    FROM dbo.football_final_dataset
);


-- Find team with highest home score

SELECT
    Home_Team,
    home_score

FROM dbo.football_final_dataset

WHERE home_score =
(
    SELECT MAX(home_score)
    FROM dbo.football_final_dataset
);


-- Show matches of top scoring team

SELECT *
FROM dbo.football_final_dataset

WHERE Home_Team =
(
    SELECT TOP 1 Home_Team
    FROM dbo.football_final_dataset
    ORDER BY home_score DESC
);


-- Teams having average goals above overall average

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Goals

FROM dbo.football_final_dataset

GROUP BY Home_Team

HAVING AVG(home_score) >
(
    SELECT AVG(home_score)
    FROM dbo.football_final_dataset
);


-- Match having minimum home score

SELECT
    match_id,
    Home_Team,
    home_score

FROM dbo.football_final_dataset

WHERE home_score =
(
    SELECT MIN(home_score)
    FROM dbo.football_final_dataset
);


-- Show score difference from maximum score

SELECT
    match_id,
    Home_Team,
    home_score,

    (
        SELECT MAX(home_score)
        FROM dbo.football_final_dataset
    ) - home_score AS Difference_From_Max

FROM dbo.football_final_dataset;


-- Count matches played by each team

SELECT
    Home_Team,

    (
        SELECT COUNT(*)
        FROM dbo.football_final_dataset f2
        WHERE f2.Home_Team = f1.Home_Team
    ) AS Matches_Played

FROM dbo.football_final_dataset f1;


>>>>>>> b0c2e16c875d4670cf09eb091a1b5904f49b3158
