--Exercise 2 - b 
--Coffe_varieties: species arabica without rust resistant order by desc
SELECT
    *
FROM
    farm.coffee_varieties
WHERE
    species = 'arabica' AND
    is_rust_resistant = FALSE
ORDER BY
    variety_name DESC; 
/**
 variety_id | variety_name  | species | is_rust_resistant |                      description
------------+---------------+---------+-------------------+--------------------------------------------------------
          5 | Típica        | arabica | f                 | Variedad tradicional de porte alto.
         11 | Pacamara      | arabica | f                 | Cruce de Pacas y Maragogipe, grano grande.
         10 | Maragogipe    | arabica | f                 | Variedad de grano grande.
          8 | Geisha        | arabica | f                 | Variedad de especialidad con perfil floral.
          3 | Caturra       | arabica | f                 | Mutación de Borbón de porte bajo y alta productividad.
          9 | Borbón Rosado | arabica | f                 | Variedad de especialidad de fruto rosado.
          6 | Borbón        | arabica | f                 | Variedad tradicional de buena calidad en taza.