# HR Employee Attrition Analysis & Interactive Dashboard

## Introduction

This project provides a comprehensive analysis of employee attrition within a fictional company. The primary goal is to identify the key factors that contribute to employees leaving their jobs. By understanding these drivers, the business can make data-driven decisions to improve employee retention, boost morale, and reduce the costs associated with hiring and training new staff.

The analysis was conducted using **SQL** for in-depth data exploration and **Power BI** for creating a dynamic, interactive dashboard to visualize the findings.

## Dashboard Preview 📊

Here are the three main pages of the interactive Power BI dashboard:

### Page 1: Attrition Overview

<img width="1287" height="724" alt="Attrition Overview" src="https://github.com/user-attachments/assets/22f16bcd-ed0e-4f43-ad06-5ba77214ffd1" />


### Page 2: Demographic Deep Dive

<img width="1281" height="721" alt="Demographic Deep View" src="https://github.com/user-attachments/assets/334fa1ff-4c11-4ad1-b216-139ecdb0c16d" />


### Page 3: Job & Compensation Insights, Why Are They Leaving?
<img width="1279" height="722" alt="Job   Compensation Insights, Why Are They Leaving" src="https://github.com/user-attachments/assets/c8557742-ff68-4a06-94ee-19e27df64938" />



## Tools & Technologies

* **Database:** SQL (for data exploration and aggregation)
* **Data Visualization:** Power BI (for dashboarding and DAX measures)
* **Data Transformation:** Power Query (for data cleaning and creating calculated columns)

## Project Workflow

1.  **Problem Definition:** Defined the key business questions related to employee attrition.
2.  **Data Exploration (SQL):** Loaded the dataset into a SQL database and performed extensive exploratory data analysis. Wrote queries to investigate trends, calculate attrition rates across various dimensions, and analyze correlations between different factors.
3.  **Data Transformation (Power Query):** Cleaned the data and created new calculated columns, such as `Age_range` and `Income_range`, to facilitate more effective analysis.
4.  **Dashboard Creation (Power BI):**
    * Connected to the data source and created the data model.
    * Developed key DAX measures like `Total Employees`, `Attrition Count`, and `Attrition Rate %`.
    * Designed three distinct pages to tell a comprehensive story, moving from a high-level overview to deep-dive analysis.
    * Implemented slicers and interactive filters to allow for dynamic exploration of the data.

## Key Insights & Findings 💡

The analysis revealed several critical factors driving employee attrition:

* **Overall Attrition:** The company has an overall attrition rate of **16.12%**.
* **Overtime is a Major Factor:** Employees who work overtime have a significantly higher attrition rate (**30.5%**) compared to those who do not (**10.4%**).
* **Job Role Matters:** The **Sales Executive** role has the highest number of employees leaving, while **Laboratory Technicians** and **Sales Representatives** also show high attrition rates.
* **Demographics:** Younger employees, particularly in the **18-25** age group, and employees who are **Single** are more likely to leave the company.
* **Income & Satisfaction:** Attrition is highest among employees in the lower income brackets. Furthermore, there is a clear negative correlation between **Job Satisfaction** and attrition; as satisfaction scores decrease, the likelihood of an employee leaving increases.
* **Departmental Trends:** The **Sales** department experiences the highest number of departures, followed closely by **Research & Development**.

## Business Recommendations

Based on the findings, the following actions are recommended to help reduce attrition:

1.  **Review Overtime Policies:** Investigate the reasons for high overtime in certain roles and departments. Consider hiring additional staff or improving process efficiency to reduce the burden on existing employees.
2.  **Focus on High-Risk Roles:** Implement targeted retention strategies for roles like Sales Executives and Laboratory Technicians. This could include mentorship programs, better career pathing, or reviewing compensation structures.
3.  **Improve Employee Engagement:** Conduct surveys and create action plans to address low job satisfaction. Focus on improving the work environment and manager-employee relationships, especially for junior employees.
4.  **Conduct Exit Interviews:** Systematically analyze feedback from departing employees to gain deeper qualitative insights into the root causes of attrition.

## How to Use This Repository

* **SQL Script:** The `HR Employee Attrition Project.sql` file contains all the queries used for the initial data exploration.
* **Power BI File:** You can download the `.pbix` file to interact with the dashboard directly (requires Power BI Desktop).
* **Dataset:** The raw `HR-Employee-Attrition.csv` file is included for reference.
