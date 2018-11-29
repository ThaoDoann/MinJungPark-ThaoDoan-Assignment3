CREATE database if not exists MVCDB;

use MVCDB;
 
CREATE TABLE IF NOT EXISTS Customers (
	customerId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	userName 		VARCHAR(20) 	NOT NULL,
	password 		VARCHAR(20) 	NOT NULL,
	firstname 		VARCHAR(20) 	NOT NULL,
	lastname 		VARCHAR(20) 	NOT NULL,
	address 		VARCHAR(50) 	NOT NULL,
	city 			VARCHAR(20) 	NOT NULL,
	postalCode 		VARCHAR(6) 		NOT NULL
);


-- (Customer Service Representative) is CSR
CREATE TABLE IF NOT EXISTS CSR (
	employeeId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	userName 		VARCHAR(20) 	NOT NULL,
	password 		VARCHAR(20) 	NOT NULL,
	firstname 		VARCHAR(20) 	NOT NULL,
	lastname 		VARCHAR(20) 	NOT NULL
);

CREATE TABLE IF NOT EXISTS Shoes (
	itemId 			INT				PRIMARY KEY 	AUTO_INCREMENT,
	itemName 		VARCHAR(50) 	NOT NULL,
	category 		VARCHAR(20) 	NOT NULL check (category IN ('Kid', 'Woman', 'Man')),
	shoeSize 		INT	   	    	NOT NULL check (shoeSize IN (1,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)),
	price  			DECIMAL(9,2)	NOT NULL,
    quantity 		INT				NOT NULL,
    image			VARCHAR(100)	NOT NULL,
    description		VARCHAR(50)		
);


CREATE TABLE IF NOT EXISTS Orders (
	orderId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	customerId 		INT 			NOT NULL ,
	itemId 			INT 			NOT NULL ,
	orderDate 		DATE 			NOT NULL,
	quantity 		INT(50)			NOT NULL,
	status 			VARCHAR(50) 	NOT NULL check (status IN ('Order-Place', 'In-Process','Delivered' , 'Completed')),
	FOREIGN KEY (customerId) 		REFERENCES Customers(customerId),
	FOREIGN KEY (itemId) 			REFERENCES Shoes(itemId)
);

-- Insert into orders (customerID, itemId, orderDate, quantity, status) values
-- (1, 2, CURDATE(), 1, 'Order Place');

Insert into Orders (customerId, itemId, orderDate, quantity, status) values 
(1, 1, curDate(), 3, 'In-Process' );

insert into Shoes (itemName, category, shoeSize, price, quantity, image, description) values
('Shoe 1', 'Kid', 5, 52.32, 1,'images/Kid_Shoes/05-01.png', 'nice pink shoe'),
('Shoe 2', 'Man', 10, 53.32, 3, 'images/Men_Shoes/02-01.png', 'n'),
('Shoe 3', 'Woman', 11, 76.32, 3, 'images/Women_Shoes/05-01.png', 'beautiful'),
('Shoe 4', 'Kid', 6, 56.32, 2, 'images/Kid_Shoes/02-01.png',  'nice pink shoe'),
('Shoe 5', 'Man', 12, 504.32, 5, 'images/Men_Shoes/01-01.png',  'n'),
('Shoe 6', 'Woman', 10, 54.32, 5, 'images/Women_Shoes/04-01.png', 'beautiful');

select count(*) from shoes where category = 'Woman';

delete from shoes where itemId IN (1, 2, 3, 4, 5, 6, 7, 8);

insert into orders (customerId, itemId, orderDate, quantity, status) values
(2,11, Curdate(), 1, 'Completed');

 

 
 
select * from Customers;
select * from CSR;
select * from Shoes;
select * from orders;