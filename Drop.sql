ALTER TABLE Card
DROP FOREIGN KEY Assistans_id_fk;

ALTER TABLE Card
DROP FOREIGN KEY Dentist_id_fk;

ALTER TABLE Card
DROP FOREIGN KEY Treatment_id_fk;

ALTER TABLE Card
DROP FOREIGN KEY Patient_id_fk;

ALTER TABLE Dentist
DROP FOREIGN KEY Specialization_id_fk;

DROP TABLE Assistans;
DROP TABLE Card;
DROP TABLE Dentist;
DROP TABLE Patient;
DROP TABLE Specialization;
DROP TABLE Treatment;

DROP DATABASE DentalDb;