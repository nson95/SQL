SELECT * FROM user;

INSERT into user(UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive)
		 VALUES ('nsonnenberg', 'password', 'Nick', 'Sonnenberg', '513-373-1999','nicksonnenberg95@gmail.com', 1, 1, 1),
				('larrydavid', '1234', 'Larry', 'David', '555-554-2183', 'ldav@hotmail.com', 0, 0, 1);