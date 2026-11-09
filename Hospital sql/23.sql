
USE CrownfieldEyeHospital;

SELECT
    a.appointment_id,
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    c.first_name AS clinician_first_name,
    c.last_name AS clinician_last_name,
    cl.clinic_name,
    a.appointment_datetime,
    a.appointment_status
FROM Appointments a
INNER JOIN Patients p
    ON a.patient_id = p.patient_id
INNER JOIN Clinicians c
    ON a.clinician_id = c.clinician_id
INNER JOIN Clinics cl
    ON a.clinic_id = cl.clinic_id
ORDER BY a.appointment_datetime;
