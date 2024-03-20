#1. Retrieve the Patient_id and ages of all patients.
SELECT Patient_id, age FROM diabetes_prediction;

#2. Select all female patients who are older than 40.
SELECT * FROM diabetes_prediction
WHERE gender = 'Female' AND age > 40;

#3. Calculate the average BMI of patients.
SELECT AVG(bmi) AS average_bmi FROM diabetes_prediction;

#4. List patients in descending order of blood glucose levels.
SELECT * FROM diabetes_prediction
ORDER BY blood_glucose_level DESC;

#5. Find patients who have hypertension and diabetes.
SELECT * FROM diabetes_prediction
WHERE hypertension = 1 AND diabetes = 1;

#6. Determine the number of patients with heart disease.
SELECT COUNT(*) AS num_patients_with_heart_disease
FROM diabetes_prediction
WHERE heart_disease = 1;

#7. Group patients by smoking history and count how many smokers and non-smokers there are.
SELECT smoking_history, COUNT(*) AS num_patients
FROM diabetes_prediction
GROUP BY smoking_history;

#8. Retrieve the Patient_ids of patients who have a BMI greater than the average BMI.
SELECT Patient_id
FROM diabetes_prediction
WHERE bmi > (SELECT AVG(bmi) FROM diabetes_prediction);

#9. Find the patient with the highest HbA1c level and the patient with the lowest HbA1clevel.
SELECT Patient_id, HbA1c_level
FROM diabetes_prediction
ORDER BY HbA1c_level DESC
LIMIT 1; -- For highest HbA1c level

SELECT Patient_id, HbA1c_level
FROM diabetes_prediction
ORDER BY HbA1c_level
LIMIT 1; -- For lowest HbA1c level

#10. Calculate the age of patients in years (assuming the current date as of now).
SELECT Patient_id, age, TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(age, '-01-01'), '%Y-%m-%d'), CURDATE()) AS age_in_years
FROM diabetes_prediction;

#11. Rank patients by blood glucose level within each gender group.
SELECT Patient_id, gender, blood_glucose_level,
    RANK() OVER (PARTITION BY gender ORDER BY blood_glucose_level) AS glucose_level_rank
FROM diabetes_prediction;

#12. Update the smoking history of patients who are older than 50 to "Ex-smoker."
UPDATE diabetes_prediction
SET smoking_history = 'Ex-smoker'
WHERE age > 50;

#13. Insert a new patient into the database with sample data.
INSERT INTO diabetes_prediction (EmployeeName, Patient_id, gender, age, hypertension, heart_disease, smoking_history, bmi, HbA1c_level, blood_glucose_level, diabetes)
VALUES ('John Doe', 'PT110', 'Male', 60, 0, 0, 'never', 26.5, 6.0, 120, 0);

#14. Delete all patients with heart disease from the database.
DELETE FROM diabetes_prediction
WHERE heart_disease = 1;

#15. Find patients who have hypertension but not diabetes using the EXCEPT operator
SELECT Patient_id
FROM diabetes_prediction
WHERE hypertension = 1
EXCEPT
SELECT Patient_id
FROM diabetes_prediction
WHERE diabetes = 1;

#16. Define a unique constraint on the "patient_id" column to ensure its values are unique.
ALTER TABLE diabetes_prediction
MODIFY Patient_id VARCHAR(300); -- Adjust the length as needed

ALTER TABLE diabetes_prediction
ADD CONSTRAINT unique_patient_id UNIQUE (Patient_id);

#17. Create a view that displays the Patient_ids, ages, and BMI of patients.
CREATE VIEW patient_info AS
SELECT Patient_id, age, bmi
FROM diabetes_prediction;

#18. Suggest improvements in the database schema to reduce data redundancy andimprove data integrity.

#19. Explain how you can optimize the performance of SQL queries on this dataset