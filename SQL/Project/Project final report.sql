/*
=========================================
Football Analytics Project
Database : FootballAnalytics
Table    : dbo.football_final_dataset
=========================================
*/

-------------------------------------------------------
-- 1. Total Matches
-------------------------------------------------------

SELECT
COUNT(*) AS Total_Matches
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 2. Total Goals
-------------------------------------------------------

SELECT
SUM(Total_Goals) AS Total_Goals
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 3. Average Goals Per Match
-------------------------------------------------------

SELECT
ROUND(AVG(Total_Goals),2) AS Avg_Goals_Per_Match
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 4. Highest Goals
-------------------------------------------------------

SELECT
MAX(Total_Goals) AS Highest_Goals
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 5. Lowest Goals
-------------------------------------------------------

SELECT
MIN(Total_Goals) AS Lowest_Goals
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 6. Match Result Distribution
-------------------------------------------------------

SELECT
Match_Result,
COUNT(*) AS Matches
FROM dbo.football_final_dataset
GROUP BY Match_Result
ORDER BY Matches DESC;

-------------------------------------------------------
-- 7. Goal Categories
-------------------------------------------------------

SELECT
Goal_Category,
COUNT(*) AS Matches
FROM dbo.football_final_dataset
GROUP BY Goal_Category
ORDER BY Matches DESC;

-------------------------------------------------------
-- 8. High Scoring Matches
-------------------------------------------------------

SELECT
COUNT(*) AS High_Scoring_Matches
FROM dbo.football_final_dataset
WHERE High_Scoring_Match = 1;

-------------------------------------------------------
-- 9. Average Winning Margin
-------------------------------------------------------

SELECT
ROUND(AVG(Winning_Margin),2) AS Avg_Winning_Margin
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 10. Home Team Performance
-------------------------------------------------------

SELECT
Home_Team,
COUNT(*) Matches_Played,
SUM(Total_Goals) Goals_Scored
FROM dbo.football_final_dataset
GROUP BY Home_Team
ORDER BY Goals_Scored DESC;

-------------------------------------------------------
-- 11. Away Team Performance
-------------------------------------------------------

SELECT
Away_Team,
COUNT(*) Matches_Played,
SUM(Total_Goals) Goals_Scored
FROM dbo.football_final_dataset
GROUP BY Away_Team
ORDER BY Goals_Scored DESC;

-------------------------------------------------------
-- 12. Monthly Matches
-------------------------------------------------------

SELECT
Match_Month,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Match_Month
ORDER BY Matches DESC;

-------------------------------------------------------
-- 13. Yearly Matches
-------------------------------------------------------

SELECT
Match_Year,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Match_Year
ORDER BY Match_Year;

-------------------------------------------------------
-- 14. Average Home Goal Efficiency
-------------------------------------------------------

SELECT
ROUND(AVG(Home_Goal_Efficiency),2) AS Avg_Home_Efficiency
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 15. Average Away Goal Efficiency
-------------------------------------------------------

SELECT
ROUND(AVG(Away_Goal_Efficiency),2) AS Avg_Away_Efficiency
FROM dbo.football_final_dataset;

-------------------------------------------------------
-- 16. Match Intensity
-------------------------------------------------------

SELECT
Match_Intensity,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Match_Intensity;

-------------------------------------------------------
-- 17. Home Attack Rating
-------------------------------------------------------

SELECT
Home_Attack_Rating,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Home_Attack_Rating;

-------------------------------------------------------
-- 18. Away Attack Rating
-------------------------------------------------------

SELECT
Away_Attack_Rating,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Away_Attack_Rating;

-------------------------------------------------------
-- 19. Home Defense Rating
-------------------------------------------------------

SELECT
Home_Defense_Rating,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Home_Defense_Rating;

-------------------------------------------------------
-- 20. Away Defense Rating
-------------------------------------------------------

SELECT
Away_Defense_Rating,
COUNT(*) Matches
FROM dbo.football_final_dataset
GROUP BY Away_Defense_Rating;