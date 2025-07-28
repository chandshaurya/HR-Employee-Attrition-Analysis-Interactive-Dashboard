# HR Employee Attrition Analysis & Interactive Dashboard

## Introduction
This project provides a comprehensive analysis of employee attrition within a fictional company. The primary goal is to identify the key factors that contribute to employees leaving their jobs. By understanding these drivers, the business can make data-driven decisions to improve employee retention, boost morale, and reduce the costs associated with hiring and training new staff.

The analysis was conducted using:

1. Python for Exploratory Data Analysis (EDA) and insightful visualizations

2. SQL for in-depth data exploration

3. Power BI for creating a dynamic, interactive dashboard

## Python-Based EDA
A separate Python script (hr_attrition_analysis.py or .ipynb) was created to explore the dataset using data science libraries like pandas, seaborn, and matplotlib. Key tasks include:

1. Data cleaning and descriptive statistics

2. Distribution analysis of attrition across departments, income, age, job roles, and work environment

3. Visualizations: box plots, count plots, and correlation heatmaps

4. Deriving actionable business insights from data patterns

https://github.com/chandshaurya/HR-Employee-Attrition-Analysis-Interactive-Dashboard/blob/main/hr.ipynb


## Dashboard Preview 📊
The interactive Power BI dashboard consists of three main pages:

- **Page 1: Attrition Overview**  
  High-level KPIs and attrition rates by department, gender, and overall.
<img width="1274" height="713" alt="Screenshot 2025-07-26 230832" src="https://github.com/user-attachments/assets/80795d5d-8551-44ab-bf3b-82042ea02267" />

- **Page 2: Demographic Deep Dive**  
  Detailed exploration of attrition by age, marital status, education, and distance from home.
<img width="1271" height="711" alt="Screenshot 2025-07-26 230908" src="https://github.com/user-attachments/assets/f5b8293e-5536-4736-8724-8c0aefabc928" />

- **Page 3: Job & Compensation Insights, Why Are They Leaving?**  
  Insights into job roles, business travel, job satisfaction, overtime, income, and how they relate to attrition risk.
<img width="1277" height="707" alt="Screenshot 2025-07-26 230932" src="https://github.com/user-attachments/assets/1be21231-bdfd-4234-9965-e19d5fb360af" />

  (Added Toolkit also)

  
## Tools & Technologies
- **Database:** SQL (for data exploration and aggregation)  
- **Data Visualization:** Power BI (for dashboard creation and DAX measures)  
- **Data Transformation:** Power Query (for data cleaning and creating calculated columns)
- **Data Modeling & Calculations: DAX (Data Analysis Expressions):**  For creating dynamic measures such as Total Employees, Attrition Count, Attrition Rate %, and advanced KPIs to support interactive and    insightful analytics.

## Project Workflow
- **Problem Definition:** Defined key business questions related to employee attrition.  
- **Data Exploration (SQL):** Loaded data into a SQL database and performed thorough exploratory analysis. Queries were written to uncover attrition rates, trends by demographics, and correlations between factors.  
- **Data Transformation (Power Query):** Cleaned data and created calculated columns such as `Age_range` and `Income_range` for better analysis capability.  
- **Dashboard Creation (Power BI):**  
  - Connected to the transformed data and developed a structured data model.  
  - Created important DAX measures like `Total Employees`, `Attrition Count`, and `Attrition Rate %`.  
  - Designed three distinct pages providing both overview and deep-dive insights.  
  - Implemented slicers and filters for dynamic user exploration.  

## Key Insights & Findings 💡
- **Overall Attrition:** The company’s attrition rate stands at 16.12%.  
- **Impact of Overtime:** Employees working overtime have a significantly higher attrition rate (30.5%) than those who do not (10.4%).  
- **Job Role Importance:** The Sales Executive role has the highest number of leavers, closely followed by Laboratory Technicians and Sales Representatives.  
- **Demographics:** Younger employees (18-25) and single employees are more likely to leave.  
- **Income & Satisfaction:** Attrition is pronounced in lower income brackets. There is a strong negative correlation between job satisfaction and attrition risk.  
- **Departmental Trends:** The Research & Development department experiences the most departures, followed by Sales.  

## Business Recommendations
- **Review Overtime Policies:** Investigate high overtime in certain roles and departments. Consider additional hiring or process improvements to reduce workload.  
- **Focus on High-Risk Roles:** Implement retention programs for high-attrition roles like Sales Executives and Laboratory Technicians, including mentorship and career development.  
- **Improve Employee Engagement:** Conduct surveys to identify dissatisfaction drivers and improve the work environment and management relationships.  
- **Conduct Exit Interviews:** Analyze exit feedback systematically to discover root causes and prevent future attrition.  

## How to Use This Repository
- **SQL Script:** The [`HR Employee Attrition Project.sql`](HR-Employee-Attrition-project.sql) file contains all the queries used for initial data exploration.  
- **Power BI File:** Download the `.pbix` file to interact with the dashboard directly (requires Power BI Desktop).  
- **Dataset:** The raw [`HR-Employee-Attrition.csv`](HR-Employee-Attrition.csv) file is included for reference.  
