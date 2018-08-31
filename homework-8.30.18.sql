SELECT *
  FROM invoice i, lineitem li, product p
 where i.id = li.invoiceid 
   and p.id = li.productid;
 
 
 SELECT i.id, i.OrderNumber, i.OrderDate, i.total, li.id, li.InvoiceID, li.ProductID,
 li.quantity, p.id, p.code as Book, p.Description, p.listprice -- could've hit SELECT *, works the same
   FROM invoice i
   JOIN lineitem li ON li.invoiceid = i.id
   JOIN product p ON li.productid  = p.id;
