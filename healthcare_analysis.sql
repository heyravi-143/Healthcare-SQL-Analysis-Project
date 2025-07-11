
-- 🚀 Healthcare SQL Analysis Project
-- 📁 File: healthcare_analysis.sql
-- ✅ Author: Ravi Mule


SELECT * FROM health_data$;


--🔹 A. Total Patients

SELECT
      count(*)  AS total_count
FROM health_data$;

--🔹 B. Patient Count by Medical Condition

SELECT
      Medical_Condition,
	  COUNT(*) Total_Count
FROM health_data$
GROUP BY Medical_Condition
ORDER BY Total_Count DESC;

--🔹 C. Average Billing per Condition

SELECT
       Medical_Condition,
	   ROUND(AVG(Billing_Amount),2) AS Billing_Average
FROM Health_data$
GROUP BY Medical_Condition
ORDER BY Billing_Average DESC;

--🔹 D. Doctor-wise Patient Load

SELECT
      Doctor,
	  COUNT(*) AS Total_Patients
FROM Health_data$
GROUP BY Doctor
ORDER BY Total_Patients DESC;

--🔹 E. Gender-wise Distribution

SELECT
      Gender,
	  COUNT(*) AS Total_Patients
FROM Health_data$
GROUP BY Gender
ORDER BY Total_Patients;


--🔹 F. Average Length of Stay by Condition

SELECT
     Medical_Condition,
	 ROUND(AVG(Length_of_Stay),2) AS Average_stay
FROM Health_data$
GROUP BY Medical_Condition
ORDER BY Average_stay DESC;


--🔹 G. Monthly Admission Trend


SELECT 
     FORMAT(Date_of_Admission,'MMM-yyyy') AS Month_year,
	 COUNT(*) AS total_patients
FROM Health_data$
GROUP BY FORMAT(Date_of_Admission,'MMM-yyyy')
ORDER BY MIN(Date_of_Admission);

--🔹 H. Emergency vs Routine Admissions

SELECT
      Admission_Type,
	  COUNT(*) AS Total
FROM Health_data$
GROUP BY Admission_Type
ORDER BY total;

--🔹 I. Insurance Provider-wise Revenue

SELECT 
      Insurance_Provider,
	 ROUND(AVG(Billing_Amount),2) AS Total
FROM Health_data$
GROUP BY Insurance_Provider
ORDER BY Total DESC;

--🔹 J. Patients with Longest Stay

SELECT top 5
       Name,
	   Length_of_Stay
FROM Health_data$
ORDER BY Length_of_Stay DESC;


--Total_revenue_per_hospital

SELECT
      Hospital,
	  ROUND(SUM(Billing_Amount),2)AS Total
FROM Health_data$
GROUP BY Hospital
ORDER BY Total DESC;
    


      



