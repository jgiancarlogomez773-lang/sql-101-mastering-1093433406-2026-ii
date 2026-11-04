-- Exercise 01 - c
-- Deliveries of 2026-09-30 with farm and collection point names

SELECT
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY 
    T3.point_name ASC, 
    T1.gross_weight_kg DESC;

/*
      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000164 | La Divisa        | Punto de Compra Abriaquí 1                   |           48.18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.96
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.13
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.62
 DLV-20260930-000080 | El Arrayán       | Punto de Compra Agrado 1                     |          120.11
 DLV-20260930-000075 | La Primavera     | Punto de Compra Alcalá 1                     |           61.99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.02
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.55
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.42
 DLV-20260930-000249 | La Montaña       | Punto de Compra Algeciras 1                  |          244.21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.68
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.95
 DLV-20260930-000282 | El Paraíso       | Punto de Compra Altamira 1                   |          156.67
 DLV-20260930-000231 | La Palma         | Punto de Compra Altamira 1                   |          128.21
 DLV-20260930-000240 | La Primavera     | Punto de Compra Andalucía 2                  |          304.69
 DLV-20260930-000203 | El Horizonte     | Punto de Compra Andalucía 2                  |          166.57
 DLV-20260930-000079 | Las Brisas       | Punto de Compra Anserma 1                    |          176.91
 DLV-20260930-000009 | Las Delicias     | Punto de Compra Anserma 1                    |           56.80
 DLV-20260930-000157 | Las Margaritas   | Punto de Compra Anserma 2                    |          169.11
 DLV-20260930-000188 | El Placer        | Punto de Compra Anserma 2                    |           40.13
 DLV-20260930-000166 | El Oasis         | Punto de Compra Ansermanuevo 1               |          245.94
 DLV-20260930-000242 | La Cristalina    | Punto de Compra Ansermanuevo 1               |           98.23
 DLV-20260930-000007 | La Argentina     | Punto de Compra Apía 2                       |          404.97
 DLV-20260930-000021 | El Refugio       | Punto de Compra Aranzazu 1                   |          143.29
 DLV-20260930-000106 | El Retiro        | Punto de Compra Armero Guayabal 2            |          308.32
 DLV-20260930-000055 | La Montaña       | Punto de Compra Armero Guayabal 2            |          124.05
 DLV-20260930-000289 | El Diamante      | Punto de Compra Armero Guayabal 2            |           56.97
 DLV-20260930-000284 | La Primavera     | Punto de Compra Ataco 1                      |          193.97
 DLV-20260930-000146 | La Estrella      | Punto de Compra Balboa 1                     |          290.98
 DLV-20260930-000072 | La Cabaña        | Punto de Compra Balboa 1                     |          176.20
 DLV-20260930-000148 | Tierra Linda     | Punto de Compra Balboa 2                     |          121.69
 DLV-20260930-000165 | La Gaitana       | Punto de Compra Baraya 1                     |          348.59
 DLV-20260930-000241 | La Selva         | Punto de Compra Belalcázar 1                 |          181.74
 DLV-20260930-000217 | Altamira         | Punto de Compra Belalcázar 1                 |          132.86
 DLV-20260930-000233 | El Oasis         | Punto de Compra Bochalema 1                  |          371.40
 DLV-20260930-000063 | La Florida       | Punto de Compra Bochalema 1                  |          184.83
 DLV-20260930-000141 | El Guamo         | Punto de Compra Bochalema 1                  |          179.04
 DLV-20260930-000077 | La Palma         | Punto de Compra Bochalema 1                  |          114.72
 DLV-20260930-000235 | La Estrella      | Punto de Compra Bosconia 1                   |          317.64
 DLV-20260930-000051 | El Mirador       | Punto de Compra Bosconia 1                   |          310.22
 DLV-20260930-000120 | El Rosal         | Punto de Compra Bosconia 1                   |           59.56
 DLV-20260930-000213 | Cafetal Viejo    | Punto de Compra Cajibío 1                    |          264.45
 DLV-20260930-000058 | Las Margaritas   | Punto de Compra Cajibío 2                    |          166.64
 DLV-20260930-000298 | La Florida       | Punto de Compra Cajibío 2                    |          124.92
 DLV-20260930-000236 | La Montaña       | Punto de Compra Cajibío 3                    |          215.39
 DLV-20260930-000179 | San José         | Punto de Compra Cajibío 3                    |          190.22
 DLV-20260930-000003 | El Cedro         | Punto de Compra Cajibío 3                    |          112.33
*/
