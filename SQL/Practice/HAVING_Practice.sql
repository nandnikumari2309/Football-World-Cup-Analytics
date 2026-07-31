<<<<<<< HEAD
/*
Project: Football Analytics
Topic: HAVING Clause
Database: FootballAnalytics
*/


-- Show teams that played more than 3 home matches

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING COUNT(*) > 3;


-- Show teams with average home goals greater than 2

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING AVG(home_score) > 2;


-- Show teams with total home goals greater than 10

SELECT
    Home_Team,
    SUM(home_score) AS Total_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING SUM(home_score) > 10
ORDER BY Total_Home_Goals DESC;


-- Show teams whose highest home score was at least 4

SELECT
    Home_Team,
    MAX(home_score) AS Highest_Home_Score
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING MAX(home_score) >= 4;


-- Show teams that played more than 3 matches and averaged more than 1.5 goals

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played,
    AVG(home_score) AS Avg_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING COUNT(*) > 3
=======
/*
Project: Football Analytics
Topic: HAVING Clause
Database: FootballAnalytics
*/


-- Show teams that played more than 3 home matches

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING COUNT(*) > 3;


-- Show teams with average home goals greater than 2

SELECT
    Home_Team,
    AVG(home_score) AS Avg_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING AVG(home_score) > 2;


-- Show teams with total home goals greater than 10

SELECT
    Home_Team,
    SUM(home_score) AS Total_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING SUM(home_score) > 10
ORDER BY Total_Home_Goals DESC;


-- Show teams whose highest home score was at least 4

SELECT
    Home_Team,
    MAX(home_score) AS Highest_Home_Score
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING MAX(home_score) >= 4;


-- Show teams that played more than 3 matches and averaged more than 1.5 goals

SELECT
    Home_Team,
    COUNT(*) AS Matches_Played,
    AVG(home_score) AS Avg_Home_Goals
FROM dbo.football_final_dataset
GROUP BY Home_Team
HAVING COUNT(*) > 3
>>>>>>> b0c2e16c875d4670cf09eb091a1b5904f49b3158
   AND AVG(home_score) > 1.5;