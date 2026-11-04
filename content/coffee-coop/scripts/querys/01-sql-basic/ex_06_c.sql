-- Exercise 06 - c
-- Farmers: Pamplona members with inactive membership, oldest affiliation first

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.affiliation_date AS affiliation_date
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.is_active = FALSE
ORDER BY T1.affiliation_date ASC;

/*
PEGAR AQUI EL RESULTADO DEL CLIENTE SQL
*/
