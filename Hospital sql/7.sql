
USE CrownfieldEyeHospital;

-- 11. Follow_Up_Plans
CREATE TABLE Follow_Up_Plans (
    follow_up_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    due_date DATE NOT NULL,
    priority VARCHAR(20) NOT NULL DEFAULT 'Medium',
    follow_up_status VARCHAR(30) NOT NULL DEFAULT 'Pending',
    notes TEXT,

    CONSTRAINT fk_followup_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id),

    CONSTRAINT chk_followup_priority
        CHECK (priority IN ('Low', 'Medium', 'High')),

    CONSTRAINT chk_followup_status
        CHECK (follow_up_status IN
        ('Pending', 'Completed', 'Cancelled'))
);
