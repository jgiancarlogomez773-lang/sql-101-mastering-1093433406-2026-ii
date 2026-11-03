-- Exercise 2 - a
-- Coffe_varieties: name,species and description of varieties with rust resistant

SELECT 
    farm.Coffee_varieties.variety_name AS variety,
    farm.Coffee_varieties.species AS spec,
    farm.Coffee_varieties.description AS descrip
FROM
    farm.Coffee_varieties
WHERE
    farm.Coffee_varieties.is_rust_resistant = TRUE;
--  farm.coffee_varieties.is rust_resistant = 't'; 
/**
  variety   |  spec   |                               descrip
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Cenicafé 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
