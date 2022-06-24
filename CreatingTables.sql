create database DentalDB;
use DentalDB;

-- Table: Assistans
CREATE TABLE Assistans (
    id int AUTO_INCREMENT NOT NULL,
    first_name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    salary int  NOT NULL,
    email varchar(50)  NOT NULL,
    CONSTRAINT Assistans_pk PRIMARY KEY(id)
);


-- Table: Card
CREATE TABLE Card (
    id int AUTO_INCREMENT NOT NULL,
    patient_id int  NOT NULL,
    dentist_id int  NOT NULL,
    assistans_id int  NOT NULL,
    treatment_id int  NOT NULL,
    date_of_visit date  NOT NULL,
    CONSTRAINT Card_pk PRIMARY KEY (id)
);

-- Table: Dentist
CREATE TABLE Dentist (
    id int AUTO_INCREMENT NOT NULL,
    first_name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    salary int  NOT NULL,
    email varchar(50)  NOT NULL,
    specialization_id int NOT NULL,
    CONSTRAINT Dentist_pk PRIMARY KEY (id)
);

-- Table: patient
CREATE TABLE Patient (
    id int AUTO_INCREMENT NOT NULL,
    first_name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    address varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY (id)
);

-- Table: treatment
CREATE TABLE Treatment (
    id int AUTO_INCREMENT NOT NULL,
    treatment_name varchar(50)  NOT NULL,
    price int  NOT NULL,
    CONSTRAINT Treatment_pk PRIMARY KEY (id)
);

-- Table: Specialization
CREATE TABLE Specialization (
    id int AUTO_INCREMENT NOT NULL,
    name varchar(50)  NOT NULL,
    CONSTRAINT Specialization_pk PRIMARY KEY (id)
);

ALTER TABLE Card
ADD CONSTRAINT Assistans_id_fk 
FOREIGN KEY (assistans_id) REFERENCES Assistans(id);


ALTER TABLE Card
ADD CONSTRAINT Dentist_id_fk
FOREIGN KEY (dentist_id) REFERENCES Dentist(id);


ALTER TABLE Card
ADD CONSTRAINT Patient_id_fk
FOREIGN KEY (patient_id) REFERENCES Patient(id);


ALTER TABLE Card
ADD CONSTRAINT Treatment_id_fk
FOREIGN KEY (treatment_id) REFERENCES Treatment(id);



ALTER TABLE Dentist
ADD CONSTRAINT Specialization_id_fk
FOREIGN KEY (specialization_id) REFERENCES Specialization(id);
