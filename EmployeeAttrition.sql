SELECT TOP (5) * FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]; 

-----------------------------------------------------------------------------

SELECT COUNT(*) AS row_numbers FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]; 

-----------------------------------------------------------------------------

SELECT 
AVG(Age) AS avg_age,
AVG(MonthlyIncome) AS avg_monthlyincome,
MAX(Age) AS max_age,
MAX(MonthlyIncome) AS max_monthlyincome,
MIN(Age) AS min_age,
MIN(MonthlyIncome) AS min_monthlyincome
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition];

-----------------------------------------------------------------------------

SELECT 
(COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*)) AS attririon_rate
FROM 
[dbo].[WA_Fn-UseC_-HR-Employee-Attrition];

-----------------------------------------------------------------------------

SELECT Department,
(COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*)) AS attririon_rate
FROM 
[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Department
ORDER BY attririon_rate DESC;

-----------------------------------------------------------------------------

SELECT JobRole,
(COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*)) AS attririon_rate
FROM 
[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY JobRole
ORDER BY attririon_rate DESC;

-----------------------------------------------------------------------------

SELECT Gender, AVG(Age) AS age_avg
FROM  [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Gender;

-----------------------------------------------------------------------------

SELECT Department ,Education, COUNT(*) AS frequency
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Education, Department
Order BY Department ASC;

-----------------------------------------------------------------------------

SELECT Attrition, AVG(Age) AS age_avg
FROM  [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition;

-----------------------------------------------------------------------------

SELECT Attrition, AVG(MonthlyIncome) AS monthlyincome_avg
FROM  [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition;

-----------------------------------------------------------------------------

SELECT JobRole,
AVG(MonthlyIncome) AS monthlyincome_avg ,
MAX(MonthlyIncome) AS monthlyincome_max ,
MIN(MonthlyIncome) AS monthlyincome_min
FROM  [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY JobRole
ORDER BY monthlyincome_avg DESC;

-----------------------------------------------------------------------------

SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
    (SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

-----------------------------------------------------------------------------

SELECT 
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
    (SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

-----------------------------------------------------------------------------

SELECT 
    YearsAtCompany,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
    (SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-----------------------------------------------------------------------------

SELECT 
    YearsSinceLastPromotion,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
    (SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

-----------------------------------------------------------------------------

SELECT BusinessTravel,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT (*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY BusinessTravel;

-----------------------------------------------------------------------------

SELECT OverTime,
COUNT(*) AS total_employees,
SUM (CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY OverTime
ORDER BY attrition_rate DESC;

-----------------------------------------------------------------------------

SELECT PerformanceRating,
COUNT(*) AS total_employees,
SUM (CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY PerformanceRating
ORDER BY attrition_rate DESC;

-----------------------------------------------------------------------------

SELECT PercentSalaryHike,
COUNT(*) AS total_employees,
SUM (CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS attrited,
(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM [dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY PercentSalaryHike
ORDER BY PercentSalaryHike DESC;

-----------------------------------------------------------------------------
























