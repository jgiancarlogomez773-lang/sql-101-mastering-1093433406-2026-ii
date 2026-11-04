-- Exercise 03 - a
-- RIGHT JOIN: all collection points with their deliveries of 2026-09-30

SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM            
    buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id AND  
    T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY    
    T2.point_name ASC;

/*
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Acevedo 1                    | DLV-20260930-000292 |          122.13
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra Agrado 1                     | DLV-20260930-000202 |          246.62
 Punto de Compra Agrado 1                     | DLV-20260930-000080 |          120.11
 Punto de Compra Aipe 1                       |                     |
 Punto de Compra Aipe 2                       |                     |
 Punto de Compra Alcalá 1                     | DLV-20260930-000075 |           61.99
 Punto de Compra Aldana 1                     | DLV-20260930-000137 |          209.02
 Punto de Compra Algeciras 1                  | DLV-20260930-000286 |          194.68
 Punto de Compra Algeciras 1                  | DLV-20260930-000246 |          247.42
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Algeciras 1                  | DLV-20260930-000130 |          290.55
 Punto de Compra Algeciras 1                  | DLV-20260930-000249 |          244.21
 Punto de Compra Altamira 1                   | DLV-20260930-000282 |          156.67
 Punto de Compra Altamira 1                   | DLV-20260930-000231 |          128.21
 Punto de Compra Andalucía 1                  |                     |
 Punto de Compra Andalucía 2                  | DLV-20260930-000240 |          304.69
 Punto de Compra Andalucía 2                  | DLV-20260930-000203 |          166.57
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra Anserma 1                    | DLV-20260930-000079 |          176.91
 Punto de Compra Anserma 2                    | DLV-20260930-000188 |           40.13
 Punto de Compra Anserma 2                    | DLV-20260930-000157 |          169.11
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000242 |           98.23
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000166 |          245.94
 Punto de Compra Apía 1                       |                     |
 Punto de Compra Apía 2                       | DLV-20260930-000007 |          404.97
 Punto de Compra Aranzazu 1                   | DLV-20260930-000021 |          143.29
 Punto de Compra Armero Guayabal 1            |                     |
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000289 |           56.97
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000106 |          308.32
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000055 |          124.05
 Punto de Compra Ataco 1                      | DLV-20260930-000284 |          193.97
 Punto de Compra Balboa 1                     | DLV-20260930-000146 |          290.98
 Punto de Compra Balboa 1                     | DLV-20260930-000072 |          176.20
 Punto de Compra Balboa 2                     | DLV-20260930-000148 |          121.69
 Punto de Compra Baraya 1                     | DLV-20260930-000165 |          348.59
 Punto de Compra Belalcázar 1                 | DLV-20260930-000217 |          132.86
 Punto de Compra Belalcázar 1                 | DLV-20260930-000241 |          181.74
 Punto de Compra Belmira 1                    |                     |
 Punto de Compra Bochalema 1                  | DLV-20260930-000141 |          179.04
 Punto de Compra Bochalema 1                  | DLV-20260930-000077 |          114.72
 Punto de Compra Bochalema 1                  | DLV-20260930-000063 |          184.83
 Punto de Compra Bochalema 1                  | DLV-20260930-000233 |          371.40
 Punto de Compra Bosconia 1                   | DLV-20260930-000120 |           59.56
 Punto de Compra Bosconia 1                   | DLV-20260930-000051 |          310.22
 Punto de Compra Bosconia 1                   | DLV-20260930-000235 |          317.64

la condicion de fecha va en el ON. Si se pusiera en el WHERE, las filas de
los puntos sin entregas ese dia tendrian delivery_id = NULL, el LIKE daria NULL (no verdadero)
y el WHERE las eliminaria: el RIGHT JOIN se comportaria como un INNER JOIN y los puntos
sin entregas no aparecerian.
*/
