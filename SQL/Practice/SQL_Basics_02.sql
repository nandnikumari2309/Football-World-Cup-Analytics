<<<<<<< HEAD
/*
Project: Football Analytics
Topic: SQL Basics 02 - LIKE, IN, BETWEEN, NULL
Database: FootballAnalytics
*/


-- Show teams whose name starts with 'S'

SELECT DISTINCT Home_Team
FROM dbo.football_final_dataset
WHERE Home_Team LIKE 'S%';


-- Show teams whose name ends with 'a'

SELECT DISTINCT Home_Team
FROM dbo.football_final_dataset
WHERE Home_Team LIKE '%a';


-- Show matches involving USA or Mexico

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_final_dataset
WHERE Home_Team IN ('USA', 'Mexico');


-- Show matches where total goals were between 3 and 5

SELECT
    Home_Team,
    Away_Team,
    Total_Goals
FROM dbo.football_final_dataset
WHERE Total_Goals BETWEEN 3 AND 5;


-- Count rows where player of the match is missing

SELECT COUNT(*) AS Missing_Player
FROM dbo.football_final_dataset
WHERE player_of_the_match_id IS NULL;
=======
/*
Project: Football Analytics
Topic: SQL Basics 02 - LIKE, IN, BETWEEN, NULL
Database: FootballAnalytics
*/


-- Show teams whose name starts with 'S'

SELECT DISTINCT Home_Team
FROM dbo.football_final_dataset
WHERE Home_Team LIKE 'S%';


-- Show teams whose name ends with 'a'

SELECT DISTINCT Home_Team
FROM dbo.football_final_dataset
WHERE Home_Team LIKE '%a';


-- Show matches involving USA or Mexico

SELECT
    Home_Team,
    Away_Team,
    home_score,
    away_score
FROM dbo.football_final_dataset
WHERE Home_Team IN ('USA', 'Mexico');


-- Show matches where total goals were between 3 and 5

SELECT
    Home_Team,
    Away_Team,
    Total_Goals
FROM dbo.football_final_dataset
WHERE Total_Goals BETWEEN 3 AND 5;


-- Count rows where player of the match is missing

SELECT COUNT(*) AS Missing_Player
FROM dbo.football_final_dataset
WHERE player_of_the_match_id IS NULL;
>>>>>>> b0c2e16c875d4670cf09eb091a1b5904f49b3158
-- Result: 5