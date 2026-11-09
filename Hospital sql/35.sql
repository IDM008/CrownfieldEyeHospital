USE CrownfieldEyeHospital;

START TRANSACTION;

UPDATE Appointments
SET appointment_status = 'Completed'
WHERE appointment_id = 5;

SELECT appointment_id, appointment_status
FROM Appointments
WHERE appointment_id = 5;

COMMIT;

SELECT appointment_id, appointment_status
FROM Appointments
WHERE appointment_id = 5;