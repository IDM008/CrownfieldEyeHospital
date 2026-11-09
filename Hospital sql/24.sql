
USE CrownfieldEyeHospital;

SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    a.appointment_id
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL;
