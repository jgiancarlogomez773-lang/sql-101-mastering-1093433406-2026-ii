-- Exercise 01 - b
-- Farms of municipality 54518 with municipality and farmer names

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T2.municipality_name AS municipality,
    T3.first_name AS first_name,
    T3.last_name AS last_name
FROM    
    farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN farm.farmers AS T3
    ON T1.farmer_id = T3.farmer_id
WHERE   
    T1.municipality_code = '54518'
ORDER BY 
    T3.last_name ASC;

/*
       farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El Jardín        | El Escorial          | Pamplona     | Manuel             | Agudelo Jiménez
 La Selva         | Peñas                | Pamplona     | Manuel             | Agudelo Jiménez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontibón             | Pamplona     | Rocío              | Álvarez Cárdenas
 Bellavista       | Alto Grande          | Pamplona     | Rocío              | Álvarez Cárdenas
 La Cabaña        | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 El Arrayán       | Navarro              | Pamplona     | Marleny            | Álvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Álvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narváez
 El Recuerdo      | La Legua             | Pamplona     | Ancízar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ramírez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodríguez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San José De Tonchala | Pamplona     | Ángela             | Barrera Peña
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodríguez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | García               | Pamplona     | Rocío              | Bastidas Suárez
 La Argentina     | Caima                | Pamplona     | Rocío              | Bastidas Suárez
 Los Pinos        | San Francisco        | Pamplona     | Rafael Héctor      | Bedoya Pinzón
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya Vélez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya Vélez
 El Jardín        | La Legua             | Pamplona     | Laura              | Benavides Álvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La Unión         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides Martínez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | Bermúdez Bedoya
 El Oasis         | La ┌Pa               | Pamplona     | Iván               | Bermúdez Flórez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | Bermúdez Gómez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | Bermúdez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | Bermúdez Henao
 Los Naranjos     | El Rosal             | Pamplona     | Álvaro             | Bermúdez Marín
 La Victoria      | Cunuba               | Pamplona     | Álvaro             | Bermúdez Marín
 El Retiro        | García               | Pamplona     | Álvaro             | Bermúdez Marín
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | Bermúdez Muñoz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | Bermúdez Rojas
 Miraflores       | El Rosal             | Pamplona     | Mónica             | Betancur Arango
 El Horizonte     | San José De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
 La Esperanza     | Peñas                | Pamplona     | Daniel             | Bonilla Duarte
 La Primavera     | Sabagua              | Pamplona     | Daniel             | Bonilla Duarte
 La Reserva       | El Escorial          | Pamplona     | Édgar              | Burbano Arango
*/
