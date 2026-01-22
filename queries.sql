-- Patient treatment cost
SELECT p.patient_name, SUM(t.cost) AS total_cost
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN treatments t ON a.appointment_id = t.appointment_id
GROUP BY p.patient_name;

-- Doctor-wise patient count
SELECT d.doctor_name, COUNT(a.patient_id) AS total_patients
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;
