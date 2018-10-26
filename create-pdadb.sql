DROP DATABASE IF EXISTS pda;
CREATE DATABASE pda;
USE pda;



-- create HighScore table
-- DROP TABLE IF EXISTS Highscore
Create table pda.Game (
ID 		 integer primary key auto_increment,
NumRolls integer   not null,
Score 	 integer   not null
);
    



-- create a user and grant privileges to that user
CREATE USER pda_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON pda.* TO pda_user@localhost;
