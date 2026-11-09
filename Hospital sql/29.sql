
USE CrownfieldEyeHospital;

DROP TRIGGER IF EXISTS trg_appointment_status_audit_s1;

DELIMITER $$

CREATE TRIGGER trg_appointment_status_audit_s1
AFTER UPDATE ON Appointments
FOR EACH ROW
BEGIN
    IF OLD.appointment_status <> NEW.appointment_status THEN

        INSERT INTO Appointment_Audit (
            appointment_id,
            old_status,
            new_status
        )
        VALUES (
            OLD.appointment_id,
            OLD.appointment_status,
            NEW.appointment_status
        );

    END IF;
END $$

DELIMITER ;
