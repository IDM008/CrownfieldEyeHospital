
USE CrownfieldEyeHospital;

SELECT
    c.clinician_id,
    c.first_name,
    c.last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Clinicians c
INNER JOIN Appointments a
    ON c.clinician_id = a.clinician_id
GROUP BY
    c.clinician_id,
    c.first_name,
    c.last_name
HAVING COUNT(a.appointment_id) > 1;
