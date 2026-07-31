<<<<<<< HEAD
/*
Project: Football Analytics
Topic: Window Functions
Database: FootballAnalytics
*/


-- Assign row numbers to matches

SELECT
    match_id,
    Home_Team,
    home_score,
    ROW_NUMBER() OVER
    (
        ORDER BY home_score DESC
    ) AS RowNum
FROM dbo.football_final_dataset;


-- Rank teams based on home score

SELECT
    match_id,
    Home_Team,
    home_score,
    RANK() OVER
    (
        ORDER BY home_score DESC
    ) AS TeamRank
FROM dbo.football_final_dataset;


-- Dense ranking based on home score

SELECT
    match_id,
    Home_Team,
    home_score,
    DENSE_RANK() OVER
    (
        ORDER BY home_score DESC
    ) AS DenseRank
FROM dbo.football_final_dataset;


-- Show ranking of teams by average home goals

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Goals,

    RANK() OVER
    (
        ORDER BY AVG(home_score) DESC
    ) AS TeamRank

FROM dbo.football_final_dataset

GROUP BY Home_Team;


-- Running total of home goals

SELECT
    match_id,
    home_score,

    SUM(home_score) OVER
    (
        ORDER BY match_id
    ) AS Running_Total

FROM dbo.football_final_dataset;


-- Compare match score with overall average

SELECT
    match_id,
    home_score,

    AVG(home_score) OVER()
    AS Overall_Average

FROM dbo.football_final_dataset;


-- Find highest scoring match for each team

SELECT *

FROM
(
    SELECT
        Home_Team,
        match_id,
        home_score,

        ROW_NUMBER() OVER
        (
            PARTITION BY Home_Team
            ORDER BY home_score DESC
        ) AS rn

    FROM dbo.football_final_dataset
) x

WHERE rn = 1;


=======
/*
Project: Football Analytics
Topic: Window Functions
Database: FootballAnalytics
*/


-- Assign row numbers to matches

SELECT
    match_id,
    Home_Team,
    home_score,
    ROW_NUMBER() OVER
    (
        ORDER BY home_score DESC
    ) AS RowNum
FROM dbo.football_final_dataset;


-- Rank teams based on home score

SELECT
    match_id,
    Home_Team,
    home_score,
    RANK() OVER
    (
        ORDER BY home_score DESC
    ) AS TeamRank
FROM dbo.football_final_dataset;


-- Dense ranking based on home score

SELECT
    match_id,
    Home_Team,
    home_score,
    DENSE_RANK() OVER
    (
        ORDER BY home_score DESC
    ) AS DenseRank
FROM dbo.football_final_dataset;


-- Show ranking of teams by average home goals

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Goals,

    RANK() OVER
    (
        ORDER BY AVG(home_score) DESC
    ) AS TeamRank

FROM dbo.football_final_dataset

GROUP BY Home_Team;


-- Running total of home goals

SELECT
    match_id,
    home_score,

    SUM(home_score) OVER
    (
        ORDER BY match_id
    ) AS Running_Total

FROM dbo.football_final_dataset;


-- Compare match score with overall average

SELECT
    match_id,
    home_score,

    AVG(home_score) OVER()
    AS Overall_Average

FROM dbo.football_final_dataset;


-- Find highest scoring match for each team

SELECT *

FROM
(
    SELECT
        Home_Team,
        match_id,
        home_score,

        ROW_NUMBER() OVER
        (
            PARTITION BY Home_Team
            ORDER BY home_score DESC
        ) AS rn

    FROM dbo.football_final_dataset
) x

WHERE rn = 1;


>>>>>>> b0c2e16c875d4670cf09eb091a1b5904f49b3158
