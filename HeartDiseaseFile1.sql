CREATE SCHEMA heart_disease; 
USE  heart_disease;
SELECT * FROM  heart;

SELECT COUNT(*) FROM heart;

SHOW COLUMNS FROM heart;

SELECT
SUM(HeartDisease IS NULL) AS C1,
SUM(BMI IS NULL) AS C2,
SUM(Smoking IS NULL) AS C3,
SUM(AlcoholDrinking IS NULL) AS C4,
SUM(Stroke IS NULL) AS C5,
SUM(PhysicalHealth IS NULL) AS C6,
SUM(MentalHealth IS NULL) AS C7,
SUM(DiffWalking IS NULL) AS C8,
SUM(Sex IS NULL) AS C9,
SUM(AgeCategory IS NULL) AS C10,
SUM(Race IS NULL) AS C11,
SUM(Diabetic IS NULL) AS C12,
SUM(PhysicalActivity IS NULL) AS C13,
SUM(GenHealth IS NULL) AS C14,
SUM(SleepTime IS NULL) AS C15,
SUM(Asthma IS NULL) AS C16,
SUM(KidneyDisease IS NULL) AS C17,
SUM(SkinCancer IS NULL) AS C18
FROM heart;

SELECT *
FROM heart 
ORDER BY AgeCategory, Sex,HeartDisease;

SELECT AgeCategory, HeartDisease, Sex, COUNT(*) AS TotalPatients
FROM heart
GROUP BY AgeCategory, HeartDisease, Sex
ORDER BY AgeCategory, HeartDisease, Sex;