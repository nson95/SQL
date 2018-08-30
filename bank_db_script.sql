DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE accounts (
	accountid	   INT 	           PRIMARY KEY     auto_increment,
	account_holder varchar(30)     not null,
    balance	       decimal(10,2)  not null,
    fees 	       decimal(10,2)   not null
    );


INSERT INTO accounts VALUES
(1, 'Rachel Baumann', 8888.00, 250.00),
(2, 'Michael Page', 5444.00, 175.00),
(3, 'Angie Snyder', 3333.00, 88.00),
(4, 'Robert Mahoney', 3322., 88.00);


CREATE table transactions (
   id		int		primary key		auto_increment,
   amount	decimal(6,2) 	not null,
   txn_type varchar(15)		not null,
   account_id int			not null,
   foreign key (account_id) references accounts(accountid)
   );

INSERT INTO transactions VALUES
(1, 500.00, 'Deposit', 3),
(2, 200.00, 'Withdrawal', 4),
(3, 200.00, 'Deposit', 4),
(4, 248.00, 'Deposit', 1);