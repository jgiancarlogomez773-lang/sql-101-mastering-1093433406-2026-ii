-- Exercise 03 - c
-- Certifications: premium per kg >= 350 COP

SELECT
    T1.certification_name AS certification,
    T1.issuer AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop,
    T1.premium_per_kg * 125 AS premium_per_load_cop
FROM 
    farm.certifications AS T1
WHERE 
    T1.premium_per_kg >= 350
ORDER BY 
    T1.premium_per_kg DESC;

/*
PEGAR AQUI EL RESULTADO DEL CLIENTE SQL
*/
