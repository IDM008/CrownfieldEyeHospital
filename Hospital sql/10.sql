
USE CrownfieldEyeHospital;

-- 1. Specialties
INSERT INTO Specialties (specialty_name)
VALUES
('Ophthalmology'),
('Retinal Surgery'),
('Glaucoma'),
('Paediatric Ophthalmology');

-- 2. Clinics
INSERT INTO Clinics (clinic_name, location)
VALUES
('General Eye Clinic', 'Manchester'),
('Retinal Clinic', 'Manchester'),
('Glaucoma Clinic', 'Liverpool');

-- 3. Diagnoses
INSERT INTO Diagnoses (diagnosis_name, description)
VALUES
('Cataract', 'Clouding of the eye lens'),
('Glaucoma', 'Damage to the optic nerve'),
('Diabetic Retinopathy', 'Diabetes-related damage to the retina'),
('Conjunctivitis', 'Inflammation of the conjunctiva');

-- 4. Medicines
INSERT INTO Medicines (medicine_name, description)
VALUES
('Eye Drops A', 'Fictional eye drop medication'),
('Eye Drops B', 'Fictional anti-inflammatory eye drops'),
('Medicine C', 'Fictional prescribed medicine'),
('Medicine D', 'Fictional eye treatment');

-- 5. Patients
INSERT INTO Patients
(first_name, last_name, date_of_birth, gender, phone, email, address)
VALUES
('John', 'Smith', '1985-04-12', 'Male', '07000000001', 'john.smith@example.com', 'Manchester'),
('Sarah', 'Jones', '1990-08-23', 'Female', '07000000002', 'sarah.jones@example.com', 'Liverpool'),
('Michael', 'Brown', '1975-02-15', 'Male', '07000000003', 'michael.brown@example.com', 'Manchester'),
('Emma', 'Wilson', '2000-11-05', 'Female', '07000000004', 'emma.wilson@example.com', 'Salford'),
('David', 'Taylor', '1968-06-30', 'Male', '07000000005', 'david.taylor@example.com', 'Liverpool'),
('Olivia', 'Thomas', '1995-09-17', 'Female', '07000000006', 'olivia.thomas@example.com', 'Manchester');
