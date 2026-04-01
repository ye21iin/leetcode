# 제1형 당뇨병 환자의 patient_id, patient_name, 그리고 질환 정보를 찾는 솔루션
SELECT 
    patient_id,
    patient_name,
    conditions  
FROM Patients
WHERE conditions RLIKE '(^|\\s)DIAB1'
;