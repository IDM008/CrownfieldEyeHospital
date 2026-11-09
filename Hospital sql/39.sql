USE CrownfieldEyeHospital;

-- Check all tables
SHOW TABLES;

-- Check number of records in main tables
SELECT 'Patients' AS table_name, COUNT(*) AS total_records FROM Patients
UNION ALL
SELECT 'Clinicians', COUNT(*) FROM Clinicians
UNION ALL
SELECT 'Appointments', COUNT(*) FROM Appointments
UNION ALL
SELECT 'Diagnoses', COUNT(*) FROM Diagnoses
UNION ALL
SELECT 'Prescriptions', COUNT(*) FROM Prescriptions
UNION ALL
SELECT 'Medicines', COUNT(*) FROM Medicines
UNION ALL
SELECT 'Follow_Up_Plans', COUNT(*) FROM Follow_Up_Plans
UNION ALL
SELECT 'Appointment_Audit', COUNT(*) FROM Appointment_Audit;

-- Check foreign key relationships
SELECT
    TABLE_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'CrownfieldEyeHospital'
AND REFERENCED_TABLE_NAME IS NOT NULL;