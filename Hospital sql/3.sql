
USE CrownfieldEyeHospital;

-- 6. Clinicians
CREATE TABLE Clinicians (
    clinician_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty_id INT NOT NULL,

    CONSTRAINT fk_clinician_specialty
        FOREIGN KEY (specialty_id)
        REFERENCES Specialties(specialty_id)
);

-- 7. Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    clinician_id INT NOT NULL,
    clinic_id INT NOT NULL,
    appointment_datetime DATETIME NOT NULL,
    appointment_status VARCHAR(30) NOT NULL DEFAULT 'Scheduled',

    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),

    CONSTRAINT fk_appointment_clinician
        FOREIGN KEY (clinician_id)
        REFERENCES Clinicians(clinician_id),

    CONSTRAINT fk_appointment_clinic
        FOREIGN KEY (clinic_id)
        REFERENCES Clinics(clinic_id),

    CONSTRAINT chk_appointment_status
        CHECK (appointment_status IN
        ('Scheduled', 'Completed', 'Cancelled', 'No Show'))
);
