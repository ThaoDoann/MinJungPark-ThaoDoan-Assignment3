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
	shoeSize 		INT(50) 		NOT NULL check (shoeSize IN (1,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)),
	price  			DECIMAL(9,2)	NOT NULL,
    image			VARCHAR(100)	NOT NULL,
    description		VARCHAR(50)		
);

CREATE TABLE IF NOT EXISTS Orders (
	orderId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	customerId 		INT 			NOT NULL ,
	itemId 			INT 			NOT NULL ,
	orderDate 		DATE 			NOT NULL,
	quantity 		INT(50)			NOT NULL,
	status 			VARCHAR(50) 	NOT NULL check (status IN ('Order Place', 'In-Proces','Delivered' , 'Completed')),
	FOREIGN KEY (customerId) 		REFERENCES Customers(customerId),
	FOREIGN KEY (itemId) 			REFERENCES Shoes(itemId)
);




select * from Customers;
select * from CSR;
select * from Shoes;
select * from orders;