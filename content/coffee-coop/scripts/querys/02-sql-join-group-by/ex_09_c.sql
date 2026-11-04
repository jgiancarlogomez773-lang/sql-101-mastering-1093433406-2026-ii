-- Exercise 09 - c
-- Farms with at least 3 analyses and average cup score >= 84

SELECT
    T1.farm_name AS farm,
    COUNT(T3.analysis_id) AS analyses_count,
    ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
FROM 
    farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses AS T3
    ON T2.delivery_id = T3.delivery_id
GROUP BY 
    T1.farm_id, T1.farm_name
HAVING 
    COUNT(T3.analysis_id) >= 3 AND 
    AVG(T3.cup_score) >= 84
ORDER BY 
    AVG(T3.cup_score) DESC;

/*
       farm       | analyses_count | avg_cup_score
------------------+----------------+---------------
 El Higuerón      |              3 |         90.00
 La Loma          |              4 |         90.00
 Santa Clara      |              3 |         90.00
 La Floresta      |              6 |         90.00
 La Estrella      |              7 |         90.00
 El Caney         |              8 |         90.00
 Monteverde       |              4 |         90.00
 El Caney         |              3 |         90.00
 El Placer        |              5 |         90.00
 El Encanto       |              3 |         90.00
 La Argentina     |              4 |         90.00
 San Antonio      |              3 |         90.00
 San José         |              3 |         90.00
 La Cristalina    |              4 |         90.00
 El Bosque        |              3 |         90.00
 La Victoria      |              6 |         90.00
 Los Pinos        |              5 |         90.00
 Monte Alto       |              3 |         90.00
 El Porvenir      |              5 |         90.00
 Los Pinos        |              5 |         90.00
 El Recreo        |              3 |         90.00
 Villa Rosa       |              4 |         90.00
 El Guamo         |              3 |         90.00
 Los Naranjos     |              3 |         90.00
 Altamira         |              5 |         90.00
 El Guamo         |              3 |         90.00
 Las Margaritas   |              3 |         90.00
 El Triunfo       |              6 |         90.00
 Las Palmas       |              5 |         90.00
 El Porvenir      |              4 |         90.00
 El Refugio       |              3 |         90.00
 La Divisa        |              3 |         90.00
 Cafetal Viejo    |              4 |         90.00
 La Gaitana       |              4 |         90.00
 La Cristalina    |              3 |         90.00
 La Loma          |              3 |         90.00
 La Cabaña        |              6 |         90.00
 El Mirador       |              3 |         90.00
 El Guamo         |              6 |         90.00
 El Porvenir      |              4 |         90.00
 Las Orquídeas    |              5 |         90.00
 El Higuerón      |              6 |         90.00
 El Cedro         |              5 |         90.00
 La Gloria        |              5 |         90.00
 El Cafetal       |              3 |         90.00
 Santa Elena      |              3 |         90.00
 La Cabaña        |              5 |         90.00
 Los Pinos        |              7 |         90.00
*/
