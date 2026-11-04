-- Exercise 03 - b
-- Certifications: adds premium per load (125 kg)

SELECT
    T1.certification_name AS certification,
    T1.issuer AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop,
    T1.premium_per_kg * 125 AS premium_per_load_cop
FROM 
    farm.certifications AS T1
ORDER BY 
    T1.premium_per_kg DESC;

/*
PEGAR AQUI EL RESULTADO DEL CLIENTE SQL
*/
