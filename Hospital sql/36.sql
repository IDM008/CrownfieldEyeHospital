USE CrownfieldEyeHospital;

START TRANSACTION;

UPDATE Appointments
SET appointment_status = 'No Show'
WHERE appointment_id = 5;

SELECT appointment_id, appointment_status
FROM Appointments
WHERE appointment_id = 5;

ROLLBACK;

SELECT appointment_id, appointment_status
FROM Appointments
WHERE appointment_id = 5;