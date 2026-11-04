-- Exercise 02 - a
-- Farmers of 54518 with their farm, including farmers without farm

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM 
    farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE 
    T1.municipality_code = '54518';

/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias Rodríguez    | La Selva
 712758473  | Wilson            | López Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Bermúdez   | El Diamante
 870240973  | Jairo             | Molina Pabón       | El Recuerdo
 727945493  | Gloria            | Marín Rivera       | La Esperanza
 549054771  | María             | Burbano Duarte     | El Nogal
 549054771  | María             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | Julián            | Peña Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe Cuéllar      | El Porvenir
 578947645  | Mario             | Uribe Cuéllar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | Ancízar Cristian  | Polanía Delgado    | Los Arrayanes
 358946393  | Carmen            | Cárdenas Moreno    | El Horizonte
 358946393  | Carmen            | Cárdenas Moreno    | El Porvenir
 358946393  | Carmen            | Cárdenas Moreno    | La Esperanza
 358946393  | Carmen            | Cárdenas Moreno    | La Primavera
 811782754  | Nicolás           | González Rodríguez | El Guayabo
 463842401  | Rocío             | Álvarez Cárdenas   | Bellavista
 463842401  | Rocío             | Álvarez Cárdenas   | El Encanto
 463842401  | Rocío             | Álvarez Cárdenas   | La Cumbre
 343256743  | Dora              | Hernández Correa   | Cafetal Viejo
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 974842644  | Arturo            | Hernández Uribe    | Bella Vista Alta
 974842644  | Arturo            | Hernández Uribe    | El Higuerón
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 42562183   | Rocío Manuela     | Jaimes Cardona     | El Arrayán
 42562183   | Rocío Manuela     | Jaimes Cardona     | El Silencio
 1148351420 | Inés              | Jiménez Jaimes     | El Recuerdo
 1148351420 | Inés              | Jiménez Jaimes     | La Gaitana
 674769591  | Iván              | Zapata Ortiz       | El Mesón
 802182926  | Antonio           | Díaz Vélez         | El Mango
 802182926  | Antonio           | Díaz Vélez         | Las Mercedes
 802182926  | Antonio           | Díaz Vélez         | Las Orquídeas
 1117597835 | Cecilia Lorena    | Díaz García        | La Montaña
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La Unión
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
 333176982  | Edilma            | Rivera Rivera      | San Antonio
 1168119731 | Felipe Camilo     | Ríos Ospina        | El Vergel
*/
