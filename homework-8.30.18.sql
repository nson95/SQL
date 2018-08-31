SELECT *
  FROM invoice i, lineitem li, product p
 where i.id = li.id and p.id =
 li.id;
 
 
 SELECT i.id, i.OrderNumber, i.OrderDate, i.total, li.id, li.InvoiceID, li.ProductID,
 li.quantity, p.id, p.code as Book, p.Description, p.listprice
   FROM invoice i
   JOIN lineitem li ON li.invoiceid = i.id
   JOIN product p ON li.productid  = p.id;
