
USE CrownfieldEyeHospital;

CREATE TABLE Appointment_Audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    old_status VARCHAR(30) NOT NULL,
    new_status VARCHAR(30) NOT NULL,
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_audit_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id)
);
