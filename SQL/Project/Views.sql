/*
=========================================
Football Analytics Views
Database : FootballAnalytics
=========================================
*/

-------------------------------------------------------
-- 1. Match Summary
-------------------------------------------------------

CREATE OR ALTER VIEW vw_MatchSummary AS
SELECT
    Match_Year,
    Match_Month,
    COUNT(*) AS Total_Matches,
    SUM(Total_Goals) AS Total_Goals,
    ROUND(AVG(Total_Goals),2) AS Avg_Goals
FROM dbo.football_final_dataset
GROUP BY Match_Year, Match_Month;
GO

-------------------------------------------------------
-- 2. Goal Analysis
-------------------------------------------------------

CREATE OR ALTER VIEW vw_GoalAnalysis AS
SELECT
    Goal_Category,
    COUNT(*) AS Total_Matches,
    SUM(Total_Goals) AS Total_Goals,
    ROUND(AVG(Total_Goals),2) AS Avg_Goals
FROM dbo.football_final_dataset
GROUP BY Goal_Category;
GO

-------------------------------------------------------
-- 3. Team Performance
-------------------------------------------------------

CREATE OR ALTER VIEW vw_TeamPerformance AS
SELECT
    Home_Team,
    COUNT(*) AS Matches_Played,
    SUM(Total_Goals) AS Total_Goals,
    ROUND(AVG(Home_Goal_Efficiency),2) AS Avg_Home_Goal_Efficiency
FROM dbo.football_final_dataset
GROUP BY Home_Team;
GO

-------------------------------------------------------
-- 4. High Scoring Matches
-------------------------------------------------------

CREATE OR ALTER VIEW vw_HighScoringMatches AS
SELECT *
FROM dbo.football_final_dataset
WHERE High_Scoring_Match = 1;
GO
/*
=========================================
View 5 - Monthly Performance
=========================================
*/

CREATE OR ALTER VIEW vw_MonthlyPerformance AS
SELECT
    Match_Year,
    Match_Month,
    COUNT(*) AS Total_Matches,
    SUM(Total_Goals) AS Total_Goals,
    ROUND(AVG(Total_Goals), 2) AS Avg_Goals
FROM dbo.football_final_dataset
GROUP BY
    Match_Year,
    Match_Month;
GO

/*
=========================================
View 6 - Attack & Defense Analysis
=========================================
*/

CREATE OR ALTER VIEW vw_AttackDefense AS
SELECT
    Home_Team,
    Home_Attack_Rating,
    Home_Defense_Rating,
    AVG(Home_Goal_Efficiency) AS Avg_Home_Efficiency,
    COUNT(*) AS Matches_Played
FROM dbo.football_final_dataset
GROUP BY
    Home_Team,
    Home_Attack_Rating,
    Home_Defense_Rating;
GO

/*
=========================================
View 7 - Winning Margins
=========================================
*/

CREATE OR ALTER VIEW vw_WinningMargins AS
SELECT
    Match_Result,
    Winning_Margin,
    COUNT(*) AS Total_Matches
FROM dbo.football_final_dataset
GROUP BY
    Match_Result,
    Winning_Margin;
GO

/*
=========================================
View 8 - Final Dashboard
=========================================
*/

CREATE OR ALTER VIEW vw_FinalDashboard AS
SELECT
    Match_Year,
    Match_Month,
    Home_Team,
    Away_Team,
    Home_Score,
    Away_Score,
    Total_Goals,
    Goal_Difference,
    Goal_Category,
    Match_Result,
    Winning_Margin,
    Home_Attack_Rating,
    Away_Attack_Rating,
    Home_Defense_Rating,
    Away_Defense_Rating,
    Home_Goal_Efficiency,
    Away_Goal_Efficiency,
    High_Scoring_Match,
    Match_Intensity
FROM dbo.football_final_dataset;
GO