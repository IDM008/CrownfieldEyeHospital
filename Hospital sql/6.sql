
USE CrownfieldEyeHospital;

-- 10. Prescription_Medicines
CREATE TABLE Prescription_Medicines (
    prescription_id INT NOT NULL,
    medicine_id INT NOT NULL,
    dosage VARCHAR(100) NOT NULL,
    route VARCHAR(50) NOT NULL,
    frequency VARCHAR(100) NOT NULL,
    duration VARCHAR(100) NOT NULL,

    PRIMARY KEY (prescription_id, medicine_id),

    CONSTRAINT fk_prescriptionmedicine_prescription
        FOREIGN KEY (prescription_id)
        REFERENCES Prescriptions(prescription_id),

    CONSTRAINT fk_prescriptionmedicine_medicine
        FOREIGN KEY (medicine_id)
        REFERENCES Medicines(medicine_id)
);
