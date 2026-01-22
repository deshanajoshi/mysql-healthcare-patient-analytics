CREATE DATABASE healthcare_db;
USE healthcare_db;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    gender CHAR(1),
    dob DATE
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY,
    appointment_id INT,
    treatment_type VARCHAR(50),
    cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

