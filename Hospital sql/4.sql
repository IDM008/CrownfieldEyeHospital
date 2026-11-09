
USE CrownfieldEyeHospital;

-- 8. Appointment_Diagnoses
CREATE TABLE Appointment_Diagnoses (
    appointment_id INT NOT NULL,
    diagnosis_id INT NOT NULL,
    diagnosis_notes TEXT,

    PRIMARY KEY (appointment_id, diagnosis_id),

    CONSTRAINT fk_apptdiagnosis_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id),

    CONSTRAINT fk_apptdiagnosis_diagnosis
        FOREIGN KEY (diagnosis_id)
        REFERENCES Diagnoses(diagnosis_id)
);
