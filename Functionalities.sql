-- 1 Average price of treatment
SELECT AVG(price) as 'Average price' 
FROM Treatment;

-- 2 Find person and date of visit
SELECT first_name, last_name, date_of_visit 
FROM Patient
INNER JOIN Card
ON Patient.id = Card.patient_id;

-- 3 How much patient payed for service
SELECT first_name, last_name, price
FROM Patient
INNER JOIN Card
ON Patient.id=Card.patient_id
INNER JOIN Treatment
ON Treatment.id = Card.treatment_id;

-- 4 Patients and doctors
SELECT  concat(Patient.first_name, ' ', Patient.last_name, ' ') as 'Patient', 
    concat(Dentist.first_name, ' ', Dentist.last_name, ' ') as 'Doctor'
FROM Patient
INNER JOIN Card
ON Patient.id=Card.patient_id
INNER JOIN Dentist
ON Dentist.id=Card.dentist_id;

-- 5 UPDATE EMAIL
UPDATE Patient
SET email='patient1@gmail.com'
WHERE Patient.id=1;

SELECT *
FROM Patient
WHERE Patient.id=1;

-- 6 Increased salaries
-- before increasing
SELECT * FROM Dentist;

UPDATE Dentist
SET salary = Dentist.salary*1.25;

-- after
SELECT * FROM Dentist;


-- 7 Patients and date of visits with subqueries
SELECT Patient.first_name, Patient.last_name,
     (SELECT Card.date_of_visit
       FROM Card
       WHERE Patient.id=Card.patient_id) as 'Date of visit'
FROM Patient;


-- 8 If sum for consultation > 500
SELECT first_name, last_name, sum(price)
FROM Patient
INNER JOIN Card
ON Patient.id=Card.patient_id
INNER JOIN Treatment
ON Treatment.id = Card.treatment_id
GROUP BY Patient.first_name
HAVING sum(price)>500;

-- 9 Quantity of all patients
SELECT count(*) as 'Quantity of patients'
FROM Patient;

-- 10 Print all patients which name starts from A
SELECT Patient.first_name
FROM Patient
WHERE Patient.first_name LIKE 'A%';