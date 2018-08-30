SELECT * from accounts
 WHERE balance <= 4000
 ;
  UPDATE accounts
     SET balance = balance + 100
   WHERE balance <=4000;