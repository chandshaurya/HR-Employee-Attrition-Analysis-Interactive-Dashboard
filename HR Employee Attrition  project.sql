-- HR Employee Attrition  project

create database hr_analytics;
use hr_analytics;

-- create table

CREATE TABLE hr_data (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

-- import table

select * from hr_data;

select count(attrition) as total_rows from hr_data;

-- Data Analysis 

-- General KPIs

-- What is the overall employee attrition rate?

select count(Attrition) as total_emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data;

-- Count of employees who left vs. stayed

select SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
       SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Employees_Stay
from hr_data;

-- Total employees by gender

select Gender, count(Attrition) as Total_Emp
from hr_data
group by Gender;


-- Attrition Trends


-- Attrition rate by department

select Department,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by Department;


-- Attrition rate by job role

select JobRole,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by JobRole;

-- Attrition by marital status

select MaritalStatus,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by MaritalStatus;

-- Attrition by overtime status

select Overtime,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by Overtime;

-- Attrition by education field

select EducationField,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by EducationField;


--  Demographics vs Attrition

-- Average age of employees who left vs. stayed

select Attrition, Round(avg(Age),2) as Avg_Age
from hr_data
group by Attrition;

-- What is the breakdown of attrition by Age groups (e.g., 18-25, 26-35, 36-45, 45+)?

select
   case
    when Age between 18 and 25 then '18-25' 
    when Age between 26 and 35 then '26-35' 
    when Age between 36 and 45 then '36-45' 
    else 'Above 45+'
    End as Age_range ,
    count(Attrition) as Total_Emp ,     
	SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
	ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
    
from hr_data
group by Age_range
order by Age_range;

-- Attrition rate by gender

select Gender,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by Gender;

-- Attrition by Gender vs Department

select Gender,
      Department,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by Gender, Department 
order by Department;

-- Attrition based on distance from home

select DistanceFromHome,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by DistanceFromHome
order  by DistanceFromHome desc;

--  Performance/Income Insights

-- Attrition by monthly income range (use buckets)

select
   case
    when MonthlyIncome between 0 and 5000 then '0-5000' 
    when MonthlyIncome between 5001 and 10000 then '5000-10000' 
    when MonthlyIncome between 10000 and 15000 then '10000-15000' 
    else 'Above 15000'
    End as Income_range ,
    count(Attrition) as Attrition_count
    
from hr_data
group by  Income_range
order by Income_range;

-- Average monthly income by job role

select JobRole, Round(avg(MonthlyIncome),2) as MonthlyIncome
from hr_data
group by JobRole
order by MonthlyIncome desc;

-- Top 5 job roles with highest attrition and lowest job satisfaction

select JobRole,
      count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent,
      Round(Avg(JobSatisfaction),2) as Avg_JobSatisfaction

from hr_data
group by JobRole
order by Attrition_Rate_Percent desc ,Avg_JobSatisfaction asc
limit 5;

-- Correlation between income and years at company

SELECT
    (
        (COUNT(*) * SUM(MonthlyIncome * YearsAtCompany) - SUM(MonthlyIncome) * SUM(YearsAtCompany)) /
        SQRT(
            (COUNT(*) * SUM(MonthlyIncome * MonthlyIncome) - POWER(SUM(MonthlyIncome), 2)) *
            (COUNT(*) * SUM(YearsAtCompany * YearsAtCompany) - POWER(SUM(YearsAtCompany), 2))
        )
    ) AS Pearson_Correlation
FROM  hr_data;

-- Department with highest salary gap between leavers and stayers

SELECT 
  Department,
  AVG(CASE WHEN Attrition = 'No' THEN MonthlyIncome END) AS avg_leaver_salary,
  AVG(CASE WHEN Attrition = 'Yes' THEN MonthlyIncome END) AS avg_stayer_salary,
  AVG(CASE WHEN Attrition = 'No' THEN MonthlyIncome END) - 
  AVG(CASE WHEN Attrition = 'Yes' THEN MonthlyIncome END) AS salary_gap
FROM hr_data
GROUP BY Department
ORDER BY salary_gap DESC
LIMIT 1;

-- Which factor (among age, overtime, satisfaction) most correlates with attrition?


SELECT 'Age' AS Factor,
    (
        (COUNT(*) * SUM(Age * Attr) - SUM(Age) * SUM(Attr)) /
        SQRT(
            (COUNT(*) * SUM(Age * Age) - POWER(SUM(Age), 2)) *
            (COUNT(*) * SUM(Attr * Attr) - POWER(SUM(Attr), 2))
        )
    ) AS Correlation_With_Attrition
FROM (
    SELECT 
        Age,
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END AS Attr
    FROM hr_data
) AS t1

UNION ALL

SELECT 'JobSatisfaction' AS Factor,
    (
        (COUNT(*) * SUM(JobSatisfaction * Attr) - SUM(JobSatisfaction) * SUM(Attr)) /
        SQRT(
            (COUNT(*) * SUM(JobSatisfaction * JobSatisfaction) - POWER(SUM(JobSatisfaction), 2)) *
            (COUNT(*) * SUM(Attr * Attr) - POWER(SUM(Attr), 2))
        )
    ) AS Correlation_With_Attrition
FROM (
    SELECT 
        JobSatisfaction,
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END AS Attr
    FROM hr_data
) AS t2

UNION ALL

SELECT 'OverTime' AS Factor,
    (
        (COUNT(*) * SUM(OT * Attr) - SUM(OT) * SUM(Attr)) /
        SQRT(
            (COUNT(*) * SUM(OT * OT) - POWER(SUM(OT), 2)) *
            (COUNT(*) * SUM(Attr * Attr) - POWER(SUM(Attr), 2))
        )
    ) AS Correlation_With_Attrition
FROM (
    SELECT 
        CASE WHEN OverTime = 'Yes' THEN 1 ELSE 0 END AS OT,
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END AS Attr
    FROM hr_data
) AS t3;






-- Satisfaction/Work-Life Balance

-- Attrition by job satisfaction score

select JobSatisfaction,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by JobSatisfaction
order by JobSatisfaction;

-- Attrition by work-life balance score

select WorkLifeBalance,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by WorkLifeBalance
order by WorkLifeBalance;

-- Attrition by training times last year

select TrainingTimesLastYear,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by TrainingTimesLastYear
order by TrainingTimesLastYear;

-- Average income & satisfaction score for employees who stayed

select  JobSatisfaction, 
        Round(avg(MonthlyIncome),2) as Avg_MonthlyIncome
from hr_data
where Attrition = 'No'
group by JobSatisfaction
order by JobSatisfaction;


-- Tenure Analysis

-- Years at company vs. attrition

select YearsAtCompany,
	  count(Attrition) as Total_Emp ,     
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
      ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
from hr_data
group by YearsAtCompany
order by YearsAtCompany;

-- Employees who left within first 2 years

SELECT 
    EmployeeNumber,
    EmployeeCount,
    JobRole,
    Department,
    Age,
    Gender,
    MonthlyIncome,
    YearsAtCompany,
    JobSatisfaction,
    Attrition
FROM 
    hr_data
WHERE 
    Attrition = 'Yes'
    AND YearsAtCompany <= 2
ORDER BY 
    YearsAtCompany ASC, MonthlyIncome DESC;
    
-- Attrition based on years since last promotion

SELECT 
  CASE 
    WHEN YearsSinceLastPromotion <= 1 THEN '0-1 year'
    WHEN YearsSinceLastPromotion BETWEEN 1.01 AND 2 THEN '1-2 years'
    WHEN YearsSinceLastPromotion BETWEEN 2.01 AND 3 THEN '2-3 years'
    WHEN YearsSinceLastPromotion BETWEEN 3.01 AND 5 THEN '3-5 years'
    ELSE 'More than 5 years'
  END AS promotion_bucket,
  COUNT(*) AS attrition_count
FROM hr_data
WHERE Attrition = 'No'
GROUP BY promotion_bucket
ORDER BY promotion_bucket;



    -- end of project



      


    



