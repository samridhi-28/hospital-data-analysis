-- Create Table

CREATE TABLE hospital(
Hospital_Name VARCHAR(100),
Location VARCHAR(50),	
Department VARCHAR(50),	
Doctors_Count NUMERIC,
Patients_Count NUMERIC,
Admission_Date DATE,
Discharge_Date DATE,
Medical_Expenses NUMERIC(10,2)
)

SELECT * FROM hospital;

--1. Total Number of Patients:

SELECT SUM(Patients_Count) AS total_patients
FROM hospital;

--2. Average Number of Doctors per Hospital:

SELECT hospital_name,AVG(Doctors_Count) AS avg_doctors
FROM hospital
GROUP BY hospital_name;


--3. Top 3 Departments with the Highest Number of Patients:

SELECT department, SUM(patients_count) AS total_patients FROM hospital
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;


--4. Hospital with the Maximum Medical Expenses:

SELECT hospital_name,SUM(medical_expenses) AS total_exp FROM hospital
GROUP BY hospital_name
ORDER BY total_exp DESC
LIMIT 1;


--5. Daily Average Medical Expenses:

SELECT admission_date,AVG(medical_expenses) AS avg_medical_expenses
FROM hospital
GROUP BY admission_date
ORDER BY admission_date;

--6. Longest Hospital Stay:

SELECT hospital_name,admission_date,discharge_date,
(discharge_date - admission_date) AS days_of_stay
FROM hospital
ORDER BY days_of_stay DESC
LIMIT 1;


--7. Total Patients Treated Per City:

SELECT location, SUM(patients_count) AS total_patients
FROM hospital
GROUP BY location;


--8. Average Length of Stay Per Department:

SELECT department,
AVG(discharge_date - admission_date) AS avg_days_of_stay
FROM hospital
GROUP BY department;


--9. Identify the Department with the Lowest Number of Patients:

SELECT department,SUM(patients_count) AS total_patients FROM hospital
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;


--10. Monthly Medical Expenses Report:

SELECT TO_CHAR(Admission_Date, 'YYYY-MM') AS month,
SUM(medical_expenses) AS monthly_exp
FROM hospital
GROUP BY TO_CHAR(admission_date, 'YYYY-MM')
ORDER BY month ;
