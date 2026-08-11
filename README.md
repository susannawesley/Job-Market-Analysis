# Job Market Analysis

## 📌 Project Overview

This project analyzes a job market dataset to identify patterns and
insights related to job opportunities, salaries, companies, industries,
locations, education, skills, and seniority levels.

The project combines **Power BI for data cleaning and visualization**
with **MySQL Workbench for SQL-based analysis**.

### Dataset

-   **Total records:** 742
-   **Total columns:** 42
-   **Primary focus:** Data-related and technology job market trends

## 🎯 Objectives

-   Analyze job distribution across states.
-   Calculate average salary statistics by state.
-   Identify industries with the highest number of job postings.
-   Identify companies with the most job openings.
-   Analyze the most common job titles.
-   Compare salaries across common job roles.
-   Analyze skills required for different job roles.
-   Study salary patterns by education and seniority.
-   Generate additional job-market insights.
-   Build an interactive Power BI dashboard.

## 🛠️ Tools & Technologies

-   **Power BI** -- Data cleaning, transformation and visualization
-   **MySQL Workbench** -- SQL analysis and querying
-   **Microsoft Excel** -- Data handling and preparation
-   **SQL** -- Filtering, aggregation and analysis

## 🧹 Data Cleaning

The dataset was cleaned and validated in Power BI before performing the
SQL analysis.

The cleaning process included:

1.  Checking and confirming the row count: **742 records**.
2.  Checking and confirming the column count: **42 columns**.
3.  Checking and validating data types.
4.  Removing unnecessary columns where applicable.
5.  Identifying and handling missing/null values.
6.  Checking for duplicate records.
7.  Cleaning and standardizing text columns.
8.  Validating salary-related columns.
9.  Validating the `State` field.
10. Verifying the final row and column count.
11. Applying the cleaned transformations.

The cleaned dataset was then used for analysis in MySQL Workbench.

## 🗄️ SQL Analysis

The cleaned dataset was imported into MySQL Workbench and analyzed using
SQL.

### Main Analysis

-   States with the highest number of job postings
-   Average minimum and maximum salaries by state
-   Average salary by state
-   Top industries with the most data-related jobs
-   Companies with the most openings
-   Most common job titles
-   Salary levels for common job titles
-   Skills required by companies/job roles
-   Salary comparison by education level
-   Additional insights

### Additional Insights

-   Most common job locations
-   Highest-paying states
-   Highest-paying job titles
-   Salary by seniority level
-   Overall salary statistics

### SQL Concepts Used

`SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `COUNT()`, `AVG()`,
`MIN()`, `MAX()`, `ROUND()`, and `LIMIT`.

## 📊 Power BI Dashboard

An interactive Power BI dashboard was created to visualize the major
findings.

### Dashboard Features

-   Total number of jobs
-   Average salary
-   Number of companies
-   Average company rating
-   Jobs by state
-   Top 10 industries
-   Average salary by state
-   Average salary by education level
-   Salary distribution
-   Interactive filters/slicers

### Dashboard Filters

The dashboard includes filters for:

-   Job Title
-   Industry
-   Company
-   State
-   Education/Degree

These filters allow users to explore the dataset based on specific
categories.

## 📈 Key Findings

-   **742 job postings** were analyzed across **42 attributes**.
-   **California (CA)** had the highest number of job postings with
    **152 jobs**.
-   **Massachusetts (MA)** had **103 job postings**.
-   **New York (NY)** had **72 job postings**.
-   California had the highest average salary among the states analyzed,
    at approximately **\$124K**.
-   **Principal Data Scientist** had the highest average salary among
    job titles with at least five postings, at approximately **\$176K**.
-   **Lead Data Scientist** had an average salary of approximately
    **\$161K**.
-   **Senior Data Scientist** had an average salary of approximately
    **\$135K**.
-   Senior-level positions had an average salary of approximately
    **\$122K**.
-   The overall average salary across the dataset was approximately
    **\$101K**.
-   The average minimum salary was approximately **\$75K**, while the
    average maximum salary was approximately **\$128K**.

## 🔄 Project Workflow

``` text
Raw Job Market Dataset
        ↓
Data Cleaning & Validation
        ↓
Power BI Transformation
        ↓
Cleaned Dataset
        ↓
MySQL Import
        ↓
SQL Analysis
        ↓
Power BI Dashboard
        ↓
Insights & Visualization
```

## 💡 Conclusion

This project demonstrates how data cleaning, SQL analysis, and business
intelligence visualization can be combined to understand job-market
trends.

The analysis highlights differences in job availability and salary based
on **location, industry, job title, education, and seniority**. The
Power BI dashboard makes these findings easier to explore through
interactive visualizations and filters.

## 👩‍💻 Author

**Susanna Bhukya**

Job Market Analysis \| Data Analytics Project

