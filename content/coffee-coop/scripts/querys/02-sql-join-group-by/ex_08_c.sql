-- Exercise 08 - c
-- Deliveries, total and average gross weight per collection point on 2026-09-30

SELECT
    T2.point_name AS collection_point,
    COUNT(*) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg
FROM 
    buy.deliveries AS T1
INNER JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY 
    T2.collection_point_id, T2.point_name
ORDER BY 
    T2.point_name ASC;

/*
               collection_point               | deliveries_count | total_gross_kg | avg_gross_kg
----------------------------------------------+------------------+----------------+--------------
 Punto de Compra Abriaquí 1                   |                1 |          48.18 |        48.18
 Punto de Compra Acevedo 1                    |                3 |         627.09 |       209.03
 Punto de Compra Agrado 1                     |                2 |         366.73 |       183.37
 Punto de Compra Alcalá 1                     |                1 |          61.99 |        61.99
 Punto de Compra Aldana 1                     |                1 |         209.02 |       209.02
 Punto de Compra Algeciras 1                  |                5 |        1093.81 |       218.76
 Punto de Compra Altamira 1                   |                2 |         284.88 |       142.44
 Punto de Compra Andalucía 2                  |                2 |         471.26 |       235.63
 Punto de Compra Anserma 1                    |                2 |         233.71 |       116.86
 Punto de Compra Anserma 2                    |                2 |         209.24 |       104.62
 Punto de Compra Ansermanuevo 1               |                2 |         344.17 |       172.09
 Punto de Compra Apía 2                       |                1 |         404.97 |       404.97
 Punto de Compra Aranzazu 1                   |                1 |         143.29 |       143.29
 Punto de Compra Armero Guayabal 2            |                3 |         489.34 |       163.11
 Punto de Compra Ataco 1                      |                1 |         193.97 |       193.97
 Punto de Compra Balboa 1                     |                2 |         467.18 |       233.59
 Punto de Compra Balboa 2                     |                1 |         121.69 |       121.69
 Punto de Compra Baraya 1                     |                1 |         348.59 |       348.59
 Punto de Compra Belalcázar 1                 |                2 |         314.60 |       157.30
 Punto de Compra Bochalema 1                  |                4 |         849.99 |       212.50
 Punto de Compra Bosconia 1                   |                3 |         687.42 |       229.14
 Punto de Compra Cajibío 1                    |                1 |         264.45 |       264.45
 Punto de Compra Cajibío 2                    |                2 |         291.56 |       145.78
 Punto de Compra Cajibío 3                    |                3 |         517.94 |       172.65
 Punto de Compra Caldas 1                     |                1 |          47.40 |        47.40
 Punto de Compra Carmen De Apicalá 1          |                2 |         248.05 |       124.03
 Punto de Compra Carmen De Apicalá 3          |                1 |         164.55 |       164.55
 Punto de Compra Circasia 2                   |                1 |         109.64 |       109.64
 Punto de Compra Cisneros 1                   |                2 |         281.04 |       140.52
 Punto de Compra Coello 1                     |                1 |         148.90 |       148.90
 Punto de Compra Confines 1                   |                1 |         220.61 |       220.61
 Punto de Compra Convención 1                 |                3 |         374.59 |       124.86
 Punto de Compra Copacabana 1                 |                2 |         125.05 |        62.53
 Punto de Compra Corinto 1                    |                1 |         201.14 |       201.14
 Punto de Compra Coromoro 1                   |                5 |        1079.24 |       215.85
 Punto de Compra El Bagre 1                   |                3 |         828.06 |       276.02
 Punto de Compra El Banco 1                   |                5 |         915.06 |       183.01
 Punto de Compra El Carmen 1                  |                1 |         294.33 |       294.33
 Punto de Compra El Carmen 2                  |                1 |         168.86 |       168.86
 Punto de Compra El Doncello 1                |                1 |          80.07 |        80.07
 Punto de Compra El Playón 1                  |                4 |         348.43 |        87.11
 Punto de Compra El Rosario 1                 |                2 |         209.78 |       104.89
 Punto de Compra El Tambo 1                   |                3 |         618.87 |       206.29
 Punto de Compra El Zulia 1                   |                1 |         192.22 |       192.22
 Punto de Compra Flandes 1                    |                3 |         589.32 |       196.44
 Punto de Compra Fresno 1                     |                2 |         631.96 |       315.98
 Punto de Compra Garzón 1                     |                1 |         219.85 |       219.85
 Punto de Compra Garzón 2                     |                3 |         430.69 |       143.56
*/
