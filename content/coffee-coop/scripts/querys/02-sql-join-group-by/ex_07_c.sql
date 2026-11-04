-- Exercise 07 - c
-- Farmers of 54518: total vs. farmers with email

SELECT
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518';

/*
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165

Explicacion: COUNT(*) cuenta todas las filas del grupo, tengan o no valores nulos.
COUNT(T1.email) cuenta solo las filas donde email NO es NULL. Por eso el segundo conteo es
menor (o igual) al primero: la diferencia son los asociados sin correo registrado.
*/
