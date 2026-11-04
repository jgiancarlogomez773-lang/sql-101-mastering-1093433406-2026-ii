-- Exercise 06 - a
-- Farmers: female members of Pamplona (54518)

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone AS phone
FROM 
    farm.farmers AS T1
WHERE 
    T1.gender = 'F' AND 
    T1.municipality_code = '54518'
ORDER BY 
    T1.last_name ASC,   
    T1.first_name ASC;

/*
PEGAR AQUI EL RESULTADO DEL CLIENTE SQL
*/
