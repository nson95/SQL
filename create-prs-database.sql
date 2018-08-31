-- create and select the database
DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- create the Product table
CREATE TABLE user (
  ID         INT            PRIMARY KEY  AUTO_INCREMENT,
  Username       VARCHAR(20)    NOT NULL     UNIQUE,
  Password       VARCHAR(10)    NOT NULL,
  FirstName      VARCHAR(20)    NOT NULL,
  LastName		 VARCHAR(20)    NOT NULL,
  PhoneNumber    VARCHAR(12)    NOT NULL,
  Email			 VARCHAR(75)    NOT NULL,
  IsReviewer     TINYINT(1)     NOT NULL,
  IsAdmin		 TINYINT(1)     NOT NULL,
  IsActive 		 TINYINT(1) DEFAULT 1    NOT NULL,
  DateCreated    DATETIME   DEFAULT   current_timestamp      NOT NULL,
  DateUpdated    DATETIME   DEFAULT   current_timestamp On update current_timestamp     NOT NULL,
  UpdatedByUser  INT   		DEFAULT   1	NOT NULL
);

CREATE TABLE vendor (
  ID		    INT			 PRIMARY KEY	  AUTO_INCREMENT,
  Code			VARCHAR(10)  NOT NULL 	UNIQUE,
  Name			VARCHAR(255) NOT NULL,
  Address		VARCHAR(255) NOT NULL,
  City			VARCHAR(255) NOT NULL,
  State			VARCHAR(2)   NOT NULL,
  Zip			VARCHAR(5)   NOT NULL,
  PhoneNumber   VARCHAR(12)  NOT NULL,
  Email			VARCHAR(100) NOT NULL,
  IsPreApproved TINYINT(1)   NOT NULL,
  IsActive		TINYINT(1) DEFAULT 1   NOT NULL,
  DateCreated	DATETIME DEFAULT current_timestamp	 NOT NULL,
  DateUpdated	DATETIME DEFAULT current_timestamp on update current_timestamp	 NOT NULL,
  UpdatedByUser	INT			 NOT NULL
  
  );

CREATE TABLE purchaserequest (
  ID		    		INT 		  PRIMARY KEY  AUTO_INCREMENT,
  UserID				INT			  NOT NULL,
  Description			VARCHAR(100)  NOT NULL,
  Justification 		VARCHAR(255)  NOT NULL,
  DateNeeded    		DATE          NOT NULL,
  Status				VARCHAR(20)   NOT NULL,
  DeliveryMode  		VARCHAR(25)   NOT NULL,
  Total					DECIMAL(10,2) NOT NULL,
  SubmittedDate 		DATETIME DEFAULT current_timestamp,
  ReasonForRejection	VARCHAR(100)  NOT NULL,
  IsActive				TINYINT(1) DEFAULT 1    NOT NULL,
  DateCreated			DATETIME DEFAULT current_timestamp	  NOT NULL,
  UpdatedByUser			INT			  NOT NULL,
  FOREIGN KEY (UserID) REFERENCES user (id) 
 );


CREATE TABLE product (
  ID 					INT      	  PRIMARY KEY  AUTO_INCREMENT,
  VendorID				INT           NOT NULL,
  PartNumber			VARCHAR(50)	  NOT NULL,
  Name					VARCHAR(150)  NOT NULL,
  Price					DECIMAL(10,2) NOT NULL,
  Unit					VARCHAR(255),
  PhotoPath		        VARCHAR(255),
  IsActive				TINYINT(1)    NOT NULL,
  DateCreated 			DATETIME DEFAULT current_timestamp	  NOT NULL,
  DateUpdated			DATETIME DEFAULT current_timestamp on update current_timestamp	  NOT NULL,
  UpdatedByUser			INT			  NOT NULL,
  FOREIGN KEY (VendorID) references vendor (id),
  CONSTRAINT vendor_part UNIQUE (VendorID, PartNumber)
  );
  
  CREATE TABLE purchaserequestlinitem (
   ID					INT           PRIMARY KEY   AUTO_INCREMENT,
   PurchaseRequestID    INT			  NOT NULL,
   ProductID			INT 		  NOT NULL,
   Quantity				INT           NOT NULL,
   IsActive				TINYINT(1)    NOT NULL,
   DateCreated			DATETIME DEFAULT current_timestamp	  NOT NULL,
   DateUpdated			DATETIME DEFAULT current_timestamp on update current_timestamp     NOT NULL,
   UpdatedByUser		INT           NOT NULL,
   FOREIGN KEY (PurchaseRequestID) REFERENCES purchaserequest (ID),
   FOREIGN KEY (ProductID) REFERENCES product (ID),
   CONSTRAINT reqpdt UNIQUE (PurchaseRequestID, ProductID)
   );
   
   
  



-- insert some rows into the Product table
INSERT INTO User (Username, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, Isactive)
VALUES ('nick_sonnenberg95', 'abc123', 'Nicholas', 'Sonnenberg', '513-373-1999','nicksonnenberg95@gmail.com', 1, 1, 1); 