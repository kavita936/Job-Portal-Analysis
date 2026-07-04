#  Job Portal Analysis — SQL Project

<p align="center">
  <img src="https://img.shields.io/badge/Tool-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Tool-MySQL%20Workbench-00758F?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Domain-HR%20%26%20Recruitment%20Analytics-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge"/>
</p>

---

## Description

An end-to-end SQL project that analyzes a **Job Portal database** to uncover hiring trends, candidate behavior, salary patterns, interview performance, and company-level recruitment insights — using real-world business questions and advanced SQL techniques.

---

## Problem Statement

A job portal company wants to understand its recruitment process and overall hiring performance. With data spread across companies, jobs, candidates, applications, interviews, and offers — there is a critical need to analyze this data systematically to answer key business questions, identify bottlenecks in the hiring pipeline, and support data-driven recruitment decisions.

---

##  Objectives

- Analyze company-wise hiring activity and salary benchmarks
- Identify cities and job roles with the highest opportunities and applications
- Study candidate behavior across education levels and application patterns
- Evaluate interview round performance and rejection trends
- Demonstrate advanced SQL skills through real-world business problem-solving

---

##  Tools Used

| Tool | Purpose |
|---|---|
| MySQL | Database creation, querying, and analysis |
| MySQL Workbench | SQL development and execution environment |
| Microsoft Excel | Raw dataset preparation and storage |
| GitHub | Version control and project hosting |

---

## Project Highlights

| Feature | Detail |
|---|---|
| Company Analysis | Hiring activity, salary benchmarks, top companies by applications |
| Job Analysis | City-wise opportunities, most applied roles, salary distribution |
| Candidate Analysis | Education-level application trends and candidate behavior |
| Interview Analysis | Round-wise rejection rates and performance tracking |
| Joins | INNER JOIN and LEFT JOIN across 6 relational tables |
| Window Functions | Ranking, running totals, and comparative analysis |
| CTEs | Multi-step analytical queries using Common Table Expressions |
|  Subqueries | Second highest salary, above-average salary companies |

---

##  Project Preview

<p align="center">
  <img src="Screenshot 2026-07-04 183329.png" alt="Job Portal SQL Project Preview" width="100%"/>
</p>

---

##  Key Insights

-  A **small group of companies** accounts for the majority of hiring activity on the portal
-  Certain **cities consistently dominate** in terms of total job opportunities posted
-  **A few job roles** attract significantly more applications than others
-  **Graduate-level candidates** represent the most active applicant segment
-  **Company-wise salary gaps** are significant — some companies offer well above the portal average
-  Specific **interview rounds show higher rejection rates**, indicating process bottlenecks
-  **Higher education levels** correlate with applications for higher-salary roles

---

##  Impact

- Helps job portals **optimize job listings** by identifying high-demand cities and roles
- Enables companies to **benchmark their salary offerings** against portal-wide averages
- Supports **interview process improvement** by highlighting high-rejection rounds
- Empowers recruiters to **target the right candidate segments** based on education and experience
- Serves as a **portfolio-ready project** demonstrating SQL skills for data analyst roles

---

## How to Use

1. **Clone the repository**
   ```bash
   git clone https://github.com/kavita936/job-portal-sql.git
   ```

2. **Set up the database & run queries** in MySQL Workbench
   ```sql
   SOURCE job_portal_sql_project.sql;
   ```

4. **Explore results** — Each query maps to a specific business question listed above. Review outputs and compare with the key insights.

---

##  Database Schema

The project contains **6 relational tables:**

```
Companies ──< Jobs ──< Applications ──< Interviews
                           │
                      Candidates
                           │
                         Offers
```

| Table | Key Columns |
|---|---|
| Companies | Company_ID, Company_Name, Industry, Location |
| Jobs | Job_ID, Company_ID, Job_Title, City, Salary |
| Candidates | Candidate_ID, Name, Education_Level, Experience |
| Applications | Application_ID, Candidate_ID, Job_ID, Status |
| Interviews | Interview_ID, Application_ID, Round, Result |
| Offers | Offer_ID, Application_ID, Salary_Offered, Status |

---

##  Project Structure

```
Job-Portal-SQL-Project/
│
├── job_portal_sql_project.sql       # Database, tables & all SQL queries
├── Screenshot 2026-07-04 183329.png # 📸 Project preview
└── README.md
```

---

## 👩‍💻 Author

**Kavita Aggarwal** — *Business  Analyst | MBA (Finance & IT )*

<p>
  <img src="https://img.shields.io/badge/SQL-Advanced-4479A1?style=flat-square&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Power%20BI-Proficient-F2C811?style=flat-square&logo=powerbi&logoColor=black"/>
  <img src="https://img.shields.io/badge/Excel-Proficient-217346?style=flat-square&logo=microsoft-excel&logoColor=white"/>
  <img src="https://img.shields.io/badge/Python-Learning-3776AB?style=flat-square&logo=python&logoColor=white"/>
</p>

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://linkedin.com/in/your-profile)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/kavita936)

---

⭐ *If you found this project helpful, give it a star on GitHub!*
