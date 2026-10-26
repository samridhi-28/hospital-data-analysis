# 🏥 Hospital Data Analysis Using PostgreSQL

## 📌 Project Overview
This project involves analyzing a comprehensive healthcare dataset using **PostgreSQL**. The objective is to extract valuable business, operational, and clinical insights by querying a relational `hospital` database covering patient volume, doctor distribution, medical expenses, and length of stay.

---

## 🛠️ Key SQL Concepts & Techniques Applied
- **Aggregations:** `SUM()`, `AVG()`, `COUNT()` for calculating metrics.
- **Grouping & Filtering:** `GROUP BY`, `ORDER BY`, `LIMIT` for ranking and categorization.
- **Date & Time Operations:** Date arithmetic (`discharge_date - admission_date`) and `TO_CHAR` for date formatting and monthly aggregation.
- **Relational Operations:** Handling multi-row department and hospital structures.

---

## 📊 Key Business & Clinical Questions Addressed
The project solves 10 core analytical queries:
1. **Total Patient Volume:** Finding the total number of patients treated across all hospitals.
2. **Doctor Distribution:** Calculating the average count of doctors available in each hospital.
3. **Top Departments:** Identifying the top 3 hospital departments with the highest number of patients.
4. **Max Medical Expenses:** Pinpointing the hospital that recorded the highest total medical expenses.
5. **Daily Expenses:** Calculating the average medical expenses per day for each hospital.
6. **Patient Stay Duration:** Finding the longest individual hospital stay by calculating date differences.
7. **City-wise Metrics:** Counting total patients treated per city/location.
8. **Department Stay Analysis:** Calculating the average length of stay (in days) per department.
9. **Lowest Patient Traffic:** Identifying the department with the least number of patients.
10. **Monthly Financial Report:** Grouping data by month using `TO_CHAR` to track total monthly medical expenses.

---

## 📂 Repository Structure
- `hospital_analysis.sql` - Complete script containing table creation schema and all solved queries.
- `SQL_project.pdf` - Compiled documentation of the assignment solutions.
