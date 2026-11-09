
USE CrownfieldEyeHospital;

SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Patients p
INNER JOIN Appointments a
    ON p.patient_id = a.patient_id
GROUP BY
    p.patient_id,
    p.first_name,
    p.last_name
HAVING COUNT(a.appointment_id) >
(
    SELECT AVG(appointment_count)
    FROM
    (
        SELECT COUNT(*) AS appointment_count
        FROM Appointments
        GROUP BY patient_id
    ) AS patient_averages
);
