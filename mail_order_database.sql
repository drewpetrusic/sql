drop table IF EXISTS order;
drop table IF EXISTS part;
drop table IF EXISTS customer;
drop table IF EXISTS employee;
drop table IF EXISTS odetail;
drop table IF EXISTS zipcode;


CREATE TABLE part (pno INT NOT NULL,
                      pname varchar(20),
					  qoh INT,
					  price FLOAT,
					  olevel INT,
                      PRIMARY KEY(pno)) ENGINE=INNODB;
					  					  
CREATE TABLE customer (cno INT NOT NULL,
                      cname varchar(10),
					  street varchar(20),
					  zip INT NOT NULL,
					  phone char(15),
                      PRIMARY KEY (cno)
					  FOREIGN KEY (zip)
					  REFERENCES zipcode(zip)) ENGINE=INNODB;
					  
CREATE TABLE employee (eno INT NOT NULL,
						ename varchar(10),
						zip INT NOT NULL,
						hdate DATE,
						PRIMARY KEY (eno)
						FOREIGN KEY (zip)
						REFERENCES zipcode(zip)) ENGINE=INNODB;
					  					  
CREATE TABLE order (ono INT NOT NULL,
                      customer_id INT NOT NULL,
                      employee_id INT NOT NULL,
					  received DATE,
					  shipped DATE,
                      PRIMARY KEY(ono),
                      FOREIGN KEY (customer_id)
                      REFERENCES customer(cno)
                      FOREIGN KEY (employee_id)
                      REFERENCES employee(eno)) ENGINE=INNODB;
					  
CREATE TABLE zipcode(zip INT NOT NULL,
						city varchar(15),
						PRIMARY KEY (zip)) ENGINE=INNODB;

CREATE TABLE odetail(ono INT NOT NULL,
						pno INT NOT NULL,
						QTY INT NOT NULL,
						PRIMARY KEY(ono, pno)
						FOREIGN KEY (ono)
						REFERENCES order(ono)
						FOREIGN KEY (pno)
						REFERENCES part(pno)) ENGINE=INNODB;
