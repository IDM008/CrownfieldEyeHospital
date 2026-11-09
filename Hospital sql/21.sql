
SELECT 'Patients' AS Table_Name, COUNT(*) AS Total
FROM Patients
UNION ALL
SELECT 'Clinicians', COUNT(*) FROM Clinicians
UNION ALL
SELECT 'Appointments', COUNT(*) FROM Appointments
UNION ALL
SELECT 'Appointment_Diagnoses', COUNT(*) FROM Appointment_Diagnoses
UNION ALL
SELECT 'Prescriptions', COUNT(*) FROM Prescriptions
UNION ALL
SELECT 'Prescription_Medicines', COUNT(*) FROM Prescription_Medicines
UNION ALL
SELECT 'Follow_Up_Plans', COUNT(*) FROM Follow_Up_Plans;
