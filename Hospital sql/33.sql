USE CrownfieldEyeHospital;

-- ADMINISTRATOR: full access to the hospital database
GRANT ALL PRIVILEGES
ON CrownfieldEyeHospital.*
TO 'hospital_admin';

-- DOCTOR: access to clinical and appointment information
GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Patients
TO 'doctor_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Appointments
TO 'doctor_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Appointment_Diagnoses
TO 'doctor_role';

GRANT SELECT
ON CrownfieldEyeHospital.Specialties
TO 'doctor_role';

GRANT SELECT
ON CrownfieldEyeHospital.Clinics
TO 'doctor_role';

GRANT SELECT
ON CrownfieldEyeHospital.Diagnoses
TO 'doctor_role';

GRANT SELECT
ON CrownfieldEyeHospital.Medicines
TO 'doctor_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Prescriptions
TO 'doctor_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Prescription_Medicines
TO 'doctor_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Follow_Up_Plans
TO 'doctor_role';

-- RECEPTIONIST: manage patient and appointment records
GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Patients
TO 'receptionist_role';

GRANT SELECT, INSERT, UPDATE
ON CrownfieldEyeHospital.Appointments
TO 'receptionist_role';

GRANT SELECT
ON CrownfieldEyeHospital.Clinicians
TO 'receptionist_role';

GRANT SELECT
ON CrownfieldEyeHospital.Clinics
TO 'receptionist_role';

-- PATIENT: access to non-sensitive general information only
GRANT SELECT
ON CrownfieldEyeHospital.Clinics
TO 'patient_role';

GRANT SELECT
ON CrownfieldEyeHospital.Specialties
TO 'patient_role';