Doctor relation


CREATE TABLE Doctor(Doctor_ID CHAR(10) UNIQUE NOT NULL PRIMARY KEY, Full_name VARCHAR(50) NOT NULL,
Phone VARCHAR(10) NOT NULL,
Specialty_number CHAR(10) NOT NULL, Supervisor VARCHAR(50)
);


INSERT INTO doctor (Doctor_ID, Full_name, Phone, Specialty_number, Supervisor) VALUES
('D1','Doctor Karen','555-1212','S6', NULL),
('D2','Doctor John','555-2934','S2', 'D1'),
('D3','Doctor Robert','555-6723','S6','D1'),
('D4','Doctor David','555-1745','S4','D1'),
('D5','Doctor Mary','555-6565','S5','D1'),
('D6','Doctor Linda','555-4889','S1','D1'),
('D7','Doctor Susan','555-4581','S3','D1'),
('D8','Doctor Zeynep' ,'555-7891','S4','D1'),
('D9','Doctor Mat','555-7791','S1','D1');


SELECT * FROM doctor;

Patient Relation
*note: -the date format for ADDED_DATE is Year, month, day. So 20190201 is 02/01/2019.
-I’ve added extra values for “Last_name” as it is a column I created last assignment.


CREATE TABLE Patient (Patient_ID CHAR(10) UNIQUE NOT NULL PRIMARY KEY
AUTO_INCREMENT,
First_Name VARCHAR(15) NOT NULL, Last_Name VARCHAR(15) NOT NULL, Phone VARCHAR(10) NOT NULL, Email VARCHAR(50),
Address VARCHAR(250) NOT NULL,
Added_date DATE NOT NULL, Doctor_ID CHAR(10) NOT NULL);

INSERT INTO patient (Patient_ID, Doctor_ID, First_Name, Last_Name, Phone, Email,
Address, Added_date) VALUES
('P1','D2','Patient Dana', 'Helly','444-1212','P1@email.com', '123 Home St.', 20190201),
('P2','D7' , 'Patient Harry' ,'Dox', '444-2934','P2@email.com','3435 Main St.', 20110713),
('P3','D6','Patient Karl','Clark','444-6723','P3@email.com',' 2176 Baker St.' , 20090110),
('P4','D2','Patient Sid', 'Joy','444-1745','P4@email.com','176 Right St.', 20100620),
('P5','D8', 'Patient Marry' ,'Oconnor', '444-6565','P5@email.com','435 Main St.', 20140518),
('P6','D6','Patient Kim','Melly','444-4889','P6@email.com','34 Home St.', 20180315),
('P7','D4','Patient Susan','Cheers','444-4581', 'P7@email.com','65 Water St.', 20110907),
('P8','D3','Patient Sam','Johnston','444-7891', 'P8@email.com','23 Hill Drive', 20101123),
('P9','D5','Patient Peter','Rowy','444-7791','P9@email.com','12 River St.', 20080201),
('P10','D7','Patient Nick','Kelmar','123-1212','P10@email.com','335 Bay St.', 20110713),
('P11','D9','Patient Kyle','Hunt','123-2934','P11@email.com','216 Baker St.', 20160510),
('P12','D9','Patient Garcia','Peters','123-6723','P12@email.com','176 Right St.',20100620),
('P13','D4','Patient Alicia','Omaha','123-1745','P13@email.com','823 Left St.', 20150518),
('P14','D4','Patient Dan','Finn','123-6565','P14@email.com','534 High St.', 20180315);
SELECT * FROM patient;







Appointment Relation
CREATE TABLE Appointment(Appointment_ID CHAR(10) UNIQUE NOT NULL
PRIMARY KEY AUTO_INCREMENT,
Doctor_ID CHAR(10) NOT NULL, Patient_ID CHAR(10) NOT NULL,
Appointment_Date VARCHAR(45) NOT NULL, Blood_Pressure INT NOT NULL,
Patient_weight SMALLINT(3) NOT NULL, Treatment_Notes TEXT NOT NULL);

INSERT INTO appointment VALUES ('A1','P1','D2','07/01/2019',80,65,'Dream to success'),
('A2','P13','D4','01/04/2019',77,88,'Good heart rate'),
('A3','P11','D9','03/22/2019',82,95,'Many spots'),
('A4','P7','D4','02/01/2020',85,74,'Fast heart rate'),
('A5','P9','D5','04/13/2019',75,56,'Reports checked'),
('A6','P3','D6','11/12/2019',81,96,'Sun light spots'),
('A7','P10','D7','01/29/2020',80,87,'Early treatment'),
('A8','P9','D5','08/12/2019',86,92,'Much better'),
('A9','P14','D4','05/18/2019',75,75,'Good heart rate'),
('A10','P8','D3','11/18/2019',76,79,'New teeth'),
('A11','P11','D9','06/22/2019',78,71,'Much better'),
('A12','P2','D7','02/21/2020',82,86,'Early treatment'),
('A13','P4','D2','08/17/2019',81,101,'Bad dreams'),
('A14','P6','D6','06/27/2019',79,49,'Sun light spots'),
('A15','P10','D7','07/29/2020',80,83,'Early treatment'),
('A16','P7','D4','08/01/2020',78,79,'Good heart rate');


SELECT * FROM appointment;

Specialty Relation
CREATE TABLE Specialty(Specialty_number CHAR(10) NOT NULL PRIMARY KEY,
Specialty_name VARCHAR(50) NOT NULL);


INSERT INTO specialty VALUES ('S1','Dermatology'),
('S2','Psychiatry'),
('S3','Oncology'),
('S4','Cardiology'),
('S5','Urology'),
('S6','Pediatrics');


SELECT * FROM specialty;






Medicine Relation
CREATE TABLE Medicine(Medicine_ID CHAR(10) NOT NULL PRIMARY KEY,
Medicine_name VARCHAR(20) NOT NULL);
INSERT INTO medicine VALUES ('M1','Ativan'),
('M2','Ibuprofen'),
('M3','Omeprazole'),
('M4','Metoprolol'),
('M5','Azithromycin'),
('M6','Codeine');
SELECT * FROM medicine;






Patient_Medicine Relation
CREATE TABLE PatientMedicine(Appointment_ID CHAR(10) NOT NULL,
Medicine_ID CHAR(10) NOT NULL);
INSERT INTO PatientMedicine VALUES ('A15','M1'),
('A2','M6'),
('A8','M3'),
('A6','M3'),
('A15','M2'),
('A10','M6'),
('A10','M2'),
('A4','M5'),
('A3','M5'),
('A1','M2');
SELECT * FROM patientmedicine;



Allergy Relation
CREATE TABLE Allergy(Allergy_ID CHAR(10) NOT NULL PRIMARY KEY,
Allergy_name VARCHAR(50) NOT NULL);


INSERT INTO allergy VALUES ('AL1','Drug'),
('AL2','Food'),
('AL3','Skin'),
('AL4','Asthma'),
('AL5','Rhinitis');


SELECT * FROM allergy;




PatientAllergy Relation
CREATE TABLE PatientAllergy(Allergy_ID CHAR(10) NOT NULL,
Patient_ID CHAR(10) NOT NULL);


INSERT INTO patientallergy VALUES ('AL4','P1'),
('AL2','P13'),
('AL3','P11'),
('AL4','P7'),
('AL5','P9'),
('AL1','P3');
SELECT * FROM patientallergy;


-- Doctor Table
CREATE TABLE Doctor (
    Doctor_ID CHAR(10) PRIMARY KEY,
    Full_name VARCHAR(50) NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    Specialty_number CHAR(10) NOT NULL,
    Supervisor CHAR(10),
    FOREIGN KEY (Supervisor) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Doctor (Doctor_ID, Full_name, Phone, Specialty_number, Supervisor) VALUES
('D1', 'Doctor Karen', '5551212', 'S6', NULL),
('D2', 'Doctor John', '5552934', 'S2', 'D1'),
('D3', 'Doctor Robert', '5556723', 'S6', 'D1'),
('D4', 'Doctor David', '5551745', 'S4', 'D1'),
('D5', 'Doctor Mary', '5556565', 'S5', 'D1'),
('D6', 'Doctor Linda', '5554889', 'S1', 'D1'),
('D7', 'Doctor Susan', '5554581', 'S3', 'D1'),
('D8', 'Doctor Zeynep', '5557891', 'S4', 'D1'),
('D9', 'Doctor Mat', '5557791', 'S1', 'D1');

SELECT * FROM Doctor;

-- Patient Table
CREATE TABLE Patient (
    Patient_ID CHAR(10) PRIMARY KEY,
    First_Name VARCHAR(15) NOT NULL,
    Last_Name VARCHAR(15) NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    Email VARCHAR(50),
    Address VARCHAR(250) NOT NULL,
    Added_date DATE NOT NULL,
    Doctor_ID CHAR(10) NOT NULL,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Patient (Patient_ID, Doctor_ID, First_Name, Last_Name, Phone, Email, Address, Added_date) VALUES
('P1', 'D2', 'Patient Dana', 'Helly', '4441212', 'P1@email.com', '123 Home St.', '2019-02-01'),
('P2', 'D7', 'Patient Harry', 'Dox', '4442934', 'P2@email.com', '3435 Main St.', '2011-07-13'),
('P3', 'D6', 'Patient Karl', 'Clark', '4446723', 'P3@email.com', '2176 Baker St.', '2009-01-10'),
('P4', 'D2', 'Patient Sid', 'Joy', '4441745', 'P4@email.com', '176 Right St.', '2010-06-20'),
('P5', 'D8', 'Patient Marry', 'Oconnor', '4446565', 'P5@email.com', '435 Main St.', '2014-05-18'),
('P6', 'D6', 'Patient Kim', 'Melly', '4444889', 'P6@email.com', '34 Home St.', '2018-03-15'),
('P7', 'D4', 'Patient Susan', 'Cheers', '4444581', 'P7@email.com', '65 Water St.', '2011-09-07'),
('P8', 'D3', 'Patient Sam', 'Johnston', '4447891', 'P8@email.com', '23 Hill Drive', '2010-11-23'),
('P9', 'D5', 'Patient Peter', 'Rowy', '4447791', 'P9@email.com', '12 River St.', '2008-02-01'),
('P10', 'D7', 'Patient Nick', 'Kelmar', '1231212', 'P10@email.com', '335 Bay St.', '2011-07-13'),
('P11', 'D9', 'Patient Kyle', 'Hunt', '1232934', 'P11@email.com', '216 Baker St.', '2016-05-10'),
('P12', 'D9', 'Patient Garcia', 'Peters', '1236723', 'P12@email.com', '176 Right St.', '2010-06-20'),
('P13', 'D4', 'Patient Alicia', 'Omaha', '1231745', 'P13@email.com', '823 Left St.', '2015-05-18'),
('P14', 'D4', 'Patient Dan', 'Finn', '1236565', 'P14@email.com', '534 High St.', '2018-03-15');

SELECT * FROM Patient;

-- Appointment Table
CREATE TABLE Appointment (
    Appointment_ID CHAR(10) PRIMARY KEY,
    Doctor_ID CHAR(10) NOT NULL,
    Patient_ID CHAR(10) NOT NULL,
    Appointment_Date DATE NOT NULL,
    Blood_Pressure INT NOT NULL,
    Patient_weight SMALLINT NOT NULL,
    Treatment_Notes TEXT NOT NULL,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO Appointment VALUES 
('A1', 'D2', 'P1', '2019-01-07', 80, 65, 'Dream to success'),
('A2', 'D4', 'P13', '2019-04-01', 77, 88, 'Good heart rate'),
('A3', 'D9', 'P11', '2019-03-22', 82, 95, 'Many spots'),
('A4', 'D4', 'P7', '2020-01-02', 85, 74, 'Fast heart rate'),
('A5', 'D5', 'P9', '2019-04-13', 75, 56, 'Reports checked'),
('A6', 'D6', 'P3', '2019-11-12', 81, 96, 'Sun light spots'),
('A7', 'D7', 'P10', '2020-01-29', 80, 87, 'Early treatment'),
('A8', 'D5', 'P9', '2019-08-12', 86, 92, 'Much better'),
('A9', 'D4', 'P14', '2019-05-18', 75, 75, 'Good heart rate'),
('A10', 'D3', 'P8', '2019-11-18', 76, 79, 'New teeth'),
('A11', 'D9', 'P11', '2019-06-22', 78, 71, 'Much better'),
('A12', 'D7', 'P2', '2020-02-21', 82, 86, 'Early treatment'),
('A13', 'D2', 'P4', '2019-08-17', 81, 101, 'Bad dreams'),
('A14', 'D6', 'P6', '2019-06-27', 79, 49, 'Sun light spots'),
('A15', 'D7', 'P10', '2020-07-29', 80, 83, 'Early treatment'),
('A16', 'D4', 'P7', '2020-08-01', 78, 79, 'Good heart rate');

SELECT * FROM Appointment;

-- Specialty Table
CREATE TABLE Specialty (
    Specialty_number CHAR(10) PRIMARY KEY,
    Specialty_name VARCHAR(50) NOT NULL
);

INSERT INTO Specialty VALUES 
('S1', 'Dermatology'),
('S2', 'Psychiatry'),
('S3', 'Oncology'),
('S4', 'Cardiology'),
('S5', 'Urology'),
('S6', 'Pediatrics');

SELECT * FROM Specialty;

-- Medicine Table
CREATE TABLE Medicine (
    Medicine_ID CHAR(10) PRIMARY KEY,
    Medicine_name VARCHAR(20) NOT NULL
);

INSERT INTO Medicine VALUES 
('M1', 'Ativan'),
('M2', 'Ibuprofen'),
('M3', 'Omeprazole'),
('M4', 'Metoprolol'),
('M5', 'Azithromycin'),
('M6', 'Codeine');

SELECT * FROM Medicine;

-- PatientMedicine Table
CREATE TABLE PatientMedicine (
    Appointment_ID CHAR(10) NOT NULL,
    Medicine_ID CHAR(10) NOT NULL,
    PRIMARY KEY (Appointment_ID, Medicine_ID),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID)
);

INSERT INTO PatientMedicine VALUES 
('A15', 'M1'),
('A2', 'M6'),
('A8', 'M3'),
('A6', 'M3'),
('A15', 'M2'),
('A10', 'M6'),
('A10', 'M2'),
('A4', 'M5'),
('A3', 'M5'),
('A1', 'M2');

SELECT * FROM PatientMedicine;

-- Allergy Table
CREATE TABLE Allergy (
    Allergy_ID CHAR(10) PRIMARY KEY,
    Allergy_name VARCHAR(50) NOT NULL
);

INSERT INTO Allergy VALUES 
('AL1', 'Drug'),
('AL2', 'Food'),
('AL3', 'Skin'),
('AL4', 'Asthma'),
('AL5', 'Rhinitis');

SELECT * FROM Allergy;

-- PatientAllergy Table
CREATE TABLE PatientAllergy (
    Allergy_ID CHAR(10) NOT NULL,
    Patient_ID CHAR(10) NOT NULL,
    PRIMARY KEY (Allergy_ID, Patient_ID),
    FOREIGN KEY (Allergy_ID) REFERENCES Allergy
