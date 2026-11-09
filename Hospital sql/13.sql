
USE CrownfieldEyeHospital;

INSERT INTO Appointments
(patient_id, clinician_id, clinic_id, appointment_datetime, appointment_status)
VALUES
(1, 1, 1, '2026-10-01 09:00:00', 'Completed'),
(1, 1, 1, '2026-10-15 10:00:00', 'Completed'),
(1, 2, 2, '2026-10-20 11:00:00', 'Completed'),
(2, 2, 2, '2026-10-05 09:30:00', 'Completed'),
(2, 3, 3, '2026-10-18 14:00:00', 'Scheduled'),
(3, 1, 1, '2026-10-22 10:30:00', 'Completed'),
(4, 3, 3, '2026-10-25 12:00:00', 'Scheduled'),
(5, 4, 1, '2026-10-28 13:00:00', 'Completed');
