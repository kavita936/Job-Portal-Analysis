create database Job_Database;
Use Job_Database ; 

create table Companies(
company_id  varchar(10) primary key ,
company_name varchar(100) ,	
industry varchar(100),
city Varchar(100) ,
company_size Varchar(100)
);

create table Jobs(
job_id	varchar(10) primary key ,
company_id varchar(10),
job_title Varchar(100),
location Varchar(100),
salary_lpa int ,
experience_required	int ,
job_type Varchar(100),
posting_date date ,
FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

create table candidates(
candidate_id varchar(10) primary key,
first_name	varchar(100),
last_name		varchar(100),
gender varchar(100),
age	int,
city varchar(100),
education varchar(100),
experience_years int 
);

create table Applications(
application_id	varchar(10) primary key ,
candidate_id varchar(10) ,
job_id	varchar(10),
application_date date ,
application_status varchar(100),
FOREIGN KEY(candidate_id) REFERENCES Candidates(candidate_id),
FOREIGN KEY(job_id) REFERENCES Jobs(job_id)
);

create table interviews(
interview_id varchar(10) primary key ,	
application_id	varchar(10) ,
interview_round	int,
interview_date date ,
interview_result varchar(100),
FOREIGN KEY(application_id)
REFERENCES Applications(application_id)
);

create table Offers( 
offer_id varchar(10) primary key ,	
application_id varchar(10),	
offered_salary_lpa	int , 
offer_date date ,
offer_status varchar(100),
FOREIGN KEY(application_id)
REFERENCES Applications(application_id)
);


## Q1 Which company is hiring the most?
SELECT
    c.company_name,
    COUNT(j.job_id) AS total_jobs
FROM Companies c
JOIN Jobs j
ON c.company_id = j.company_id
GROUP BY c.company_name
ORDER BY total_jobs DESC
LIMIT 1;


## Q2 Which city has the most job opportunities?
SELECT
    j.location,
    COUNT(*) AS total_jobs
FROM Jobs j
GROUP BY j.location
ORDER BY total_jobs DESC
LIMIT 1;


## Q3 Which interview round has the highest rejection rate?
SELECT
    interview_round,
    COUNT(*) AS rejection_count
FROM Interviews
WHERE interview_result = 'Fail'
GROUP BY interview_round
ORDER BY rejection_count DESC
LIMIT 1;


## Q4 Which jobs receive the most applications?

SELECT
    j.job_title,
    COUNT(a.application_id) AS total_applications
FROM Jobs j
JOIN Applications a
ON j.job_id = a.job_id
GROUP BY j.job_title
ORDER BY total_applications DESC
LIMIT 1;


## Q5 Which education level applies the most?
SELECT
    c.education,
    COUNT(a.application_id) AS total_applications
FROM Candidates c
JOIN Applications a
ON c.candidate_id = a.candidate_id
GROUP BY c.education
ORDER BY total_applications DESC
LIMIT 1;


## Q6 Find companies whose average salary is above the overall average.
SELECT
    c.company_name,
    AVG(j.salary_lpa) AS avg_salary
FROM Companies c
JOIN Jobs j
ON c.company_id = j.company_id
GROUP BY c.company_name
HAVING AVG(j.salary_lpa) >
(
    SELECT AVG(salary_lpa)
    FROM Jobs
);


## Q7 What is the average salary by job title?
SELECT
    job_title,
    AVG(salary_lpa) AS avg_salary
FROM Jobs
GROUP BY job_title;


## Q8 Find the top 3 companies that received the highest number of applications.
SELECT
    c.company_name,
    COUNT(*) AS total_application
FROM Companies c
JOIN Jobs j
ON c.company_id = j.company_id
JOIN Applications a
ON j.job_id = a.job_id
GROUP BY c.company_name
ORDER BY total_application DESC
LIMIT 3;


## Q9 Find the second highest salary offered in the Jobs table.
SELECT *
FROM Jobs
WHERE salary_lpa = (
    SELECT MAX(salary_lpa)
    FROM Jobs
    WHERE salary_lpa < (
        SELECT MAX(salary_lpa)
        FROM Jobs
    )
);


## Q10 What is the hiring funnel: Applications → Interviews → Offers?
SELECT
    c.company_name,
    COUNT(DISTINCT j.job_id) AS total_jobs,
    COUNT(DISTINCT a.application_id) AS total_applications,
    COUNT(DISTINCT i.interview_id) AS total_interviews,
    COUNT(DISTINCT o.offer_id) AS total_offers
FROM Companies c
JOIN Jobs j
    ON c.company_id = j.company_id
LEFT JOIN Applications a
    ON j.job_id = a.job_id
LEFT JOIN Interviews i
    ON a.application_id = i.application_id
LEFT JOIN Offers o
    ON a.application_id = o.application_id
GROUP BY c.company_name
ORDER BY total_offers DESC;






















































