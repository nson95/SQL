SELECT *
  FROM invoice i, lineitem li, product p
 where i.id = li.id and p.id = li.id;
 
 
 SELECT * 
   FROM invoice i
   JOIN lineitem li ON i.id = li.id
   JOIN product p ON li.id  = 
   p.id;
