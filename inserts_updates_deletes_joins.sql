SELECT * FROM accounts;

INSERT INTO accounts VALUES
(102, 'Warren Moon', 60000, 250.00);
INSERT INTO accounts VAlUES 
(103, 'Theophilus London', 3598.76, 666.00),
(104, 'Miles Davis', 5000, 90),
(105, 'Travis Scott', 3500, 0),
(106, 'Larry David', 1000, 750.00);

INSERT INTO accounts (account_holder, balance, fees)
VALUES('Nick Sonnenberg', 50000, 0),
('Terri Bull', 50, 10);


INSERT INTO accounts (account_holder, balance, fees)
VALUES ('James Johnson', 265.97, 87.64),
('Harry Johnson', 7000, 22),
('Lisa Potter', 20000, 600);

SELECT * FROM accounts;


UPDATE accounts
   SET balance = 7503.80
 WHERE accountid = 2
    OR accountid =103;
    
UPDATE accounts
   SET fees = 0
 WHERE accountid = 106;
 
 
SELECT * FROM accounts;

DELETE 
FROM accounts 
WHERE accountid = 103;

DELETE 
FROM accounts 
WHERE accountid = 105;

SELECT account_holder, balance, fees, amount, txn_type
  FROM accounts accts
INNER JOIN transactions t     -- shows only what is in common
    on accts.accountid = t.account_id;
    
    
SELECT account_holder, balance, fees, amount, txn_type
  FROM accounts accts
LEFT OUTER JOIN transactions
    on accts.accountid = account_id;