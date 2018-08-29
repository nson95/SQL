SELECT * 
  FROM product
 -- WHERE ProductID = 5
 WHERE listprice = 57.50
   AND code = 'java';

SELECT * FROM product 
 WHERE ListPrice < 55;
 
 SELECT * FROM product
  ORDER BY description desc;
  
SELECT max(listprice)
  FROM product;

SELECT COUNT(*) FROM product
 WHERE listprice =57.50