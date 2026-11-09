
USE CrownfieldEyeHospital;

UPDATE Appointments
SET appointment_status = 'Completed'
WHERE appointment_id = 5;

SELECT * FROM Appointment_Audit;
