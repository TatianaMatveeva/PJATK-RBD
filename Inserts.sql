INSERT INTO Patient
(first_name, last_name, address, email)
VALUES
('Stefan', 'Kommi', 'ul.Ruinina 16', 'sjaki@mail.pl'),
('Alfons', 'Ale', 'ul.Gomellos 18', 'aleale@mail.pl'),
('Bree', 'Larson', 'ul.Samerro 11', 'larson@mail.com');


INSERT INTO Specialization
(name)
VALUES
('Orthodontist'),
('Endodontics'),
('Periodontics');

SELECT * FROM Specialization;


INSERT INTO Dentist
(first_name, last_name, salary, email, specialization_id)
VALUES
('Norman', 'Gif', 6000, 'fg@gmail.com', 1),
('Rid', 'Maro', 8000, 'gh@gmail.com', 2),
('Djon', 'Ale', 9000, 'dr@gmail.com', 3);

SELECT * FROM Dentist;


INSERT INTO Assistans
(first_name, last_name, salary, email)
VALUES
('Alica', 'Ulions', 2000, 'jcjce@gmail.com'),
('Merry', 'Klonst', 3000, 'wdqd@gmail.com'),
('Houn', 'Noiun', 1000, 'wdwd@gmail.com');


INSERT INTO Treatment
(treatment_name, price)
VALUES
('examination', 150),
('tooth filling', 350),
('snapshot of teeth', 600);

SELECT * FROM Treatment;


INSERT INTO Card
(patient_id, dentist_id, assistans_id, treatment_id, date_of_visit)
VALUES
(1, 2, 2, 1, '20220515'),
(2, 1, 1, 3, '20220620'),
(3, 3, 3, 2, '20220621');

SELECT * FROM Card;