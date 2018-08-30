SELECT * from accounts
 WHERE balance <= 4000
 ;
  UPDATE accounts
     SET balance = balance + 100
   WHERE balance <=4000;
   
SELECT * FROM accounts 
 WHERE accountid = 101;
 
 DELETE 
   FROM accounts 
  WHERE accountid = 101;
 
 SELECT * from accounts
  WHERE accountid in (50,51,100,101);
  
SELECT * FROM accounts
 WHERE account_holder like '% J%';
 

SELECT DISTINCT balance
		   FROM accounts;
 