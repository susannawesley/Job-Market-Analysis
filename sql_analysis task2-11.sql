use job_market_analysis;
select count(*) as total_rows from job_market_final_cleaned;
desc job_market_final_cleaned;

-- Task 2.  States with Most Number of Jobs
select state, count(*) as number_of_jobs 
from job_market_final_cleaned where state is not null 
group by state order by number_of_jobs desc;

-- Task 3.	Average Minimal and Maximal Salaries in Different States.
select state, round(avg(Lower_Salary)) as Avg_min_sal,
  round(avg(Upper_Salary)) as Avg_max_sal from job_market_final_cleaned 
  where state is not null group by state order by Avg_min_sal desc;
  
-- Task 4.	Average Salary in Different States.
select state, round(avg(Avg_SalaryK)) as Avg_Sal from job_market_final_cleaned 
  where state is not null group by state order by Avg_Sal desc;
  
-- Task 5.	Top 5 Industries with Maximum Number of Data Science Related Job Postings.
select Industry, count(*) as Data_Science_Related_Jobs
from job_market_final_cleaned
where LOWER(Job_Title) REGEXP
'data scientist|data analyst|data engineer'and Industry is not null and Industry <> '-1'group by Industry 
 order by Data_Science_Related_Jobs desc limit 5;
 
 -- Task 6.	Companies with Maximum Number of Job Openings.
 select Company_Name, count(*) as Max_Job_Openings from job_market_final_cleaned 
  where Company_Name is not null group by Company_Name order by Max_Job_Openings desc;
  
-- Task 7.	Job Titles with Most Number of Jobs.
select Job_Title, count(*) as Most_no_of_jobs from job_market_final_cleaned
 where Job_Title is not null group by Job_Title order by Most_no_of_jobs desc;
 
 -- Task 8.	Salary of Job Titles with Most Number of Jobs.
select Job_Title, count(*) as Number_of_Jobs,
  round(AVG(Lower_Salary)) as Average_Minimum_Salary,
  round(AVG(Upper_Salary)) as Average_Maximum_Salary,
  round(AVG(Avg_SalaryK)) as Average_Salary from job_market_final_cleaned
  where Job_Title is not null group by Job_Title order by Number_of_Jobs desc;
  
-- Task 9.	Skills Required by Companies for Each Job Title.
desc job_market_final_cleaned;
select Job_Title, sum(Python) as Python, sum(spark) as Spark,
  sum(aws) as AWS, sum(excel) as Excel, sum(sql_) as sqll, sum(sas) as SAS,
  sum(keras) as Keras, sum(pytorch) as PyTorch, sum(scikit) as Scikit_Learn,
  sum(tensor) as TensorFlow, sum(hadoop) as Hadoop, sum(tableau) as Tableau,
  sum(bi) as BI, sum(flink) as Flink, sum(mongo) as MongoDB, sum(google_an) as Google_Analytics
  from job_market_final_cleaned where Job_Title is not null group by Job_Title order by Job_Title;
 
-- Task 10.	Relation between Average Salary and Education.
select Degree, count(*) as Number_of_Jobs,
  round(avg(Avg_SalaryK)) as Average_Salary from job_market_final_cleaned
  where Degree is not null group by Degree order by Average_Salary desc;
  
  
  
-- Task 11.	Analyze all the features and derive multiple insights.

-- 11.1. Most common job locations
select Job_Location, count(*) as Number_of_Jobs from job_market_final_cleaned
  where Job_Location is not null group by Job_Location order by Number_of_Jobs desc limit 5;
  
-- 11.2. Highest Paying States
select State, count(*) as Number_of_Jobs, round(avg(Avg_SalaryK)) as Average_Salary from job_market_final_cleaned
  where State is not null group by State having count(*) >= 10 order by Average_Salary desc;
  
  -- 11.3 Highest paying job titles
  select Job_Title, count(*) as Number_of_Jobs, round(avg(Avg_SalaryK)) as Average_Salary
  from job_market_final_cleaned where Job_Title is not null group by Job_Title having count(*) >= 5
  order by Average_Salary desc;
  
  -- 11.4  Salary by Seniority
select seniority_by_title AS Seniority, count(*) as Number_of_Jobs, round(avg(Avg_SalaryK)) as Average_Salary
from job_market_final_cleaned where seniority_by_title is not null group by seniority_by_title order by Average_Salary desc;
  
  -- 11.5  Overall Salary Statistics
  select count(*) as Total_Jobs,
    round(avg(Lower_Salary)) as Average_Minimum_Salary,
    round(avg(Upper_Salary)) as Average_Maximum_Salary,
    round(avg(Avg_SalaryK)) as Overall_Average_Salary,
    min(Avg_SalaryK) as Minimum_Average_Salary,
    max(Avg_SalaryK) as Maximum_Average_Salary from job_market_final_cleaned;
  
  

