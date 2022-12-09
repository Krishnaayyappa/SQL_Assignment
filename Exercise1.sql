/* Exercise 1 */

/* DataBase Creation */
CREATE DATABASE HotelManagementSystem;


/*Table Creation */
CREATE TABLE CUSTOMERS(
	Cust_ID int NOT NULL,
    Cust_Name varchar(20),
    Cust_city varchar(20),
    Cust_RoomNo int,
    CheckIn_Time date,
    PRIMARY KEY (Cust_ID)
);



/* Inserting five random rows data into the table */
INSERT INTO CUSTOMERS 
VALUES (001, "Jay", "Mumbai", 105, "2022-10-12"),
(002, "Nanda", "chennai", 106, "2020-11-13"),
(003, "Varun", "Hyderabad", 110, "2020-11-29"),
(004, "Dilip", "Bangalore", 113, "2020-12-01"),
(005, "Indra", "ViZag", 120, "2020-12-5");



/* displaying the table */
select * from CUSTOMERS;