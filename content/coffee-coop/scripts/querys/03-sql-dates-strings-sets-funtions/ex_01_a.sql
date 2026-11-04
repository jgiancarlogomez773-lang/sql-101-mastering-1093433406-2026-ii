-- Exercise 01 - a
-- Farmers of 54518: membership seniority in days (as of today), longest first

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM    
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518'
ORDER BY 
    CURRENT_DATE - T1.membership_date DESC;

/*
  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julián Guillermo  | Valencia Narváez   | 1995-01-27      |           11604
 361839624  | Rocío Alba        | Ortega Serrano     | 1995-07-10      |           11440
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11422
 939635303  | Marleny           | Álvarez Correa     | 1996-03-20      |           11186
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11061
 1012324420 | Martha Carolina   | Pérez Jaimes       | 1996-11-22      |           10939
 230971064  | Manuel            | Agudelo Jiménez    | 1997-03-29      |           10812
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10802
 677772599  | Guillermo         | Pérez Pérez        | 1997-05-17      |           10763
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10706
 789425487  | Efraín Ricardo    | Contreras Ospina   | 1997-07-21      |           10698
 172555225  | Edilma Gabriela   | Arias Álvarez      | 1998-03-24      |           10452
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10449
 914235490  | Óscar             | Ospina González    | 1998-05-02      |           10413
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10325
 142439635  | Yeison            | Medina Londoño     | 1998-09-29      |           10263
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10228
 446019320  | Fernando          | Rojas Cárdenas     | 1998-12-16      |           10185
 33787285   | Rubén             | Ramos Chamorro     | 1999-03-02      |           10109
 866702579  | Álvaro            | Bermúdez Marín     | 1999-06-21      |            9998
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      |            9913
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9806
 14046794   | Alberto           | Álvarez Villamizar | 2000-04-14      |            9700
 1185360305 | Iván              | Bermúdez Flórez    | 2000-09-03      |            9558
 1145130870 | Elsa              | Marín Henao        | 2001-03-17      |            9363
 622024549  | Viviana           | González Molina    | 2001-04-18      |            9331
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      |            9236
 1103932523 | Amparo            | Bastidas Chamorro  | 2001-08-01      |            9226
 712500733  | Esperanza         | Valencia Ortiz     | 2001-08-12      |            9215
 302059113  | Yuliana           | Sandoval Bedoya    | 2001-09-24      |            9172
 279649109  | Carlos            | Castillo Torres    | 2001-10-14      |            9152
 951995464  | Wilson Yeison     | Díaz Ramírez       | 2001-12-19      |            9086
 934117740  | Gustavo           | Marín Sandoval     | 2002-04-29      |            8955
 44817013   | Aníbal            | Silva Villamizar   | 2002-05-19      |            8935
 358946393  | Carmen            | Cárdenas Moreno    | 2002-06-25      |            8898
 1079700992 | Camila            | Sánchez Pinzón     | 2002-07-01      |            8892
 403413565  | Reinaldo          | Suárez Polanía     | 2002-07-31      |            8862
 968133883  | Sandra            | Ortega García      | 2002-08-11      |            8851
 940051048  | David Germán      | Romero Bonilla     | 2002-10-11      |            8790
 409306735  | Mónica Claudia    | Flórez González    | 2002-10-28      |            8773
 699387247  | Fanny             | Montoya Valencia   | 2003-04-01      |            8618
 1135293825 | Abelardo          | Pérez Castro       | 2003-06-19      |            8539
 478755763  | Nicolás           | Rivera Duque       | 2003-08-11      |            8486
 1177165427 | Juliana           | Ortega Osorio      | 2003-09-04      |            8462
 788902052  | Camilo Iván       | Calderón Trujillo  | 2003-12-14      |            8361
 436957556  | Jazmín            | Burbano Jaimes     | 2003-12-19      |            8356
 768461420  | Marleny           | Agudelo Sandoval   | 2003-12-24      |            8351
 932437698  | Amparo            | Duarte Duque       | 2003-12-29      |            8346
*/
