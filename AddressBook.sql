
#UC1

 CREATE DATABASE AddressBookService;
ERROR 1007 (HY000): Can't create database 'addressbookservice'; database exists
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbookservice |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> USE AddressBookService;
Database changed
mysql> select database();
+--------------------+
| database()         |
+--------------------+
| addressbookservice |
+--------------------+
1 row in set (0.00 sec)

#UC2

mysql> CREATE TABLE AddressBook
    -> (
    ->  Id INT unsigned NOT NULL AUTO_INCREMENT,
    ->  First_Name VARCHAR(15) NOT NULL,
    -> Last_Name VARCHAR(15) NOT NULL,
    ->  Address VARCHAR(150) NOT NULL,
    -> City VARCHAR(15) NOT NULL,
    -> State VARCHAR(15) NOT NULL,
    -> Zip BIGINT NOT NULL,
    -> Phone_Number BIGINT NOT NULL,
    ->  Email VARCHAR(150) NOT NULL,
    ->  PRIMARY KEY(Id)
    -> );
Query OK, 0 rows affected (0.40 sec)

#UC3

mysql> DESCRIBE AddressBook;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| Id           | int unsigned | NO   | PRI | NULL    | auto_increment |
| First_Name   | varchar(15)  | NO   |     | NULL    |                |
| Last_Name    | varchar(15)  | NO   |     | NULL    |                |
| Address      | varchar(150) | NO   |     | NULL    |                |
| City         | varchar(15)  | NO   |     | NULL    |                |
| State        | varchar(15)  | NO   |     | NULL    |                |
| Zip          | bigint       | NO   |     | NULL    |                |
| Phone_Number | bigint       | NO   |     | NULL    |                |
| Email        | varchar(150) | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql>  INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email) VALUES
    -> ('abhishek','kumar','badarpur','new delhi','delhi','110044','8368914101','xyz@123'),
    -> ('harsh','kumar','meethapur','new delhi','delhi','1011010','3743787878','sssa@122');
Query OK, 2 rows affected (0.11 sec)
Records: 2  Duplicates: 0  Warnings: 0

#UC4

mysql>  SELECT * FROM AddressBook;
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
2 rows in set (0.00 sec)

#UC5

mysql> SELECT * FROM AddressBook
    -> WHERE City = 'new delhi';
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+
2 rows in set (0.00 sec)

#UC6

mysql> ALTER TABLE AddressBook
    -> ADD type VARCHAR(15);
Query OK, 0 rows affected (2.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql>  SELECT * FROM AddressBook;
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    | type |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  | NULL |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 | NULL |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
2 rows in set (0.00 sec)

mysql> UPDATE AddressBook
    -> SET type = 'Self'
    ->  WHERE First_Name ='abhishek';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE AddressBook
    ->  SET type = 'Friend'
    ->  WHERE First_Name ='harsh';
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  SELECT * FROM AddressBook;
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    | type   |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  | Self   |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 | Friend |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
2 rows in set (0.00 sec)
mysql> ALTER TABLE AddressBook
    -> ADD type VARCHAR(15);
Query OK, 0 rows affected (2.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql>  SELECT * FROM AddressBook;
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    | type |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  | NULL |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 | NULL |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+------+
2 rows in set (0.00 sec)

mysql> UPDATE AddressBook
    -> SET type = 'Self'
    ->  WHERE First_Name ='abhishek';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE AddressBook
    ->  SET type = 'Friend'
    ->  WHERE First_Name ='harsh';
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

#UC9

mysql> select *From AddressBook;
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
| Id | First_Name | Last_Name | Address   | City      | State       | Zip     | Phone_Number | Email       |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi       |  110044 |   8368914101 | xyz@123     |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi       | 1011010 |   3743787878 | sssa@122    |
|  3 | Kalyan     | Kumar     | Andheri   | Mumbai    | Maharashtra |  530066 |   9882763845 | pl@p.com    |
|  4 | Atik       | Singh     | Dharavi   | Mumbai    | Maharashtra |  530044 |   9494631888 | mlk@mln.com |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
4 rows in set (0.00 sec)

mysql>  ALTER TABLE AddressBook ADD type VARCHAR(15) DEFAULT 'Friend';
Query OK, 0 rows affected (0.32 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>  ALTER TABLE AddressBook ADD name VARCHAR(15);
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *From AddressBook;
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
| Id | First_Name | Last_Name | Address   | City      | State       | Zip     | Phone_Number | Email       | type   | name |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi       |  110044 |   8368914101 | xyz@123     | Friend | NULL |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi       | 1011010 |   3743787878 | sssa@122    | Friend | NULL |
|  3 | Kalyan     | Kumar     | Andheri   | Mumbai    | Maharashtra |  530066 |   9882763845 | pl@p.com    | Friend | NULL |
|  4 | Atik       | Singh     | Dharavi   | Mumbai    | Maharashtra |  530044 |   9494631888 | mlk@mln.com | Friend | NULL |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
4 rows in set (0.07 sec)

mysql>  SELECT * FROM AddressBook;
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
| Id | First_Name | Last_Name | Address   | City      | State | Zip     | Phone_Number | Email    | type   |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi |  110044 |   8368914101 | xyz@123  | Self   |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi | 1011010 |   3743787878 | sssa@122 | Friend |
+----+------------+-----------+-----------+-----------+-------+---------+--------------+----------+--------+
2 rows in set (0.00 sec)

#UC7

mysql> SELECT City,COUNT(City) FROM AddressBook GROUP BY City;
+-----------+-------------+
| City      | COUNT(City) |
+-----------+-------------+
| new delhi |           2 |
+-----------+-------------+
1 row in set (0.00 sec)

mysql> SELECT State,COUNT(State) FROM AddressBook GROUP BY State;
+-------+--------------+
| State | COUNT(State) |
+-------+--------------+
| delhi |            2 |
+-------+--------------+
1 row in set (0.00 sec)

#UC8



mysql> INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email) VALUES
    -> ('Kalyan', 'Kumar', 'Andheri', 'Mumbai', 'Maharashtra', '530066','9882763845', 'pl@p.com'),
    -> ('Atik', 'Singh', 'Dharavi', 'Mumbai', 'Maharashtra', '530044','9494631888', 'mlk@mln.com');
Query OK, 2 rows affected (0.13 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT *FROM AddressBook
    -> WHERE city ='Mumbai'
    -> ORDER BY First_Name ASC;
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+------+
| Id | First_Name | Last_Name | Address | City   | State       | Zip    | Phone_Number | Email       | type |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+------+
|  4 | Atik       | Singh     | Dharavi | Mumbai | Maharashtra | 530044 |   9494631888 | mlk@mln.com | NULL |
|  3 | Kalyan     | Kumar     | Andheri | Mumbai | Maharashtra | 530066 |   9882763845 | pl@p.com    | NULL |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+------+
2 rows in set (0.00 sec)

mysql>



#UC9


mysql> select *From AddressBook;
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
| Id | First_Name | Last_Name | Address   | City      | State       | Zip     | Phone_Number | Email       |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi       |  110044 |   8368914101 | xyz@123     |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi       | 1011010 |   3743787878 | sssa@122    |
|  3 | Kalyan     | Kumar     | Andheri   | Mumbai    | Maharashtra |  530066 |   9882763845 | pl@p.com    |
|  4 | Atik       | Singh     | Dharavi   | Mumbai    | Maharashtra |  530044 |   9494631888 | mlk@mln.com |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+
4 rows in set (0.00 sec)

mysql>  ALTER TABLE AddressBook ADD type VARCHAR(15) DEFAULT 'Friend';
Query OK, 0 rows affected (0.32 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>  ALTER TABLE AddressBook ADD name VARCHAR(15);
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *From AddressBook;
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
| Id | First_Name | Last_Name | Address   | City      | State       | Zip     | Phone_Number | Email       | type   | name |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi       |  110044 |   8368914101 | xyz@123     | Friend | NULL |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi       | 1011010 |   3743787878 | sssa@122    | Friend | NULL |
|  3 | Kalyan     | Kumar     | Andheri   | Mumbai    | Maharashtra |  530066 |   9882763845 | pl@p.com    | Friend | NULL |
|  4 | Atik       | Singh     | Dharavi   | Mumbai    | Maharashtra |  530044 |   9494631888 | mlk@mln.com | Friend | NULL |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
4 rows in set (0.07 sec)

mysql>

#UC10

mysql>  SELECT COUNT(type) FROM addressbook;
+-------------+
| COUNT(type) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql>

#UC11
mysql> INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email,type,name) VALUES
    -> ('pratiik', 'Singh', 'panwel', 'Mumbai', 'Maharashtra', '530044','9426625688', 'sh@mln.com', 'Family',NULL);
Query OK, 1 row affected (0.10 sec)

mysql> select *From addresbook;
ERROR 1146 (42S02): Table 'addressbookservice.addresbook' doesn't exist
mysql>  select *From AddressBook;
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
| Id | First_Name | Last_Name | Address   | City      | State       | Zip     | Phone_Number | Email       | type   | name |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
|  1 | abhishek   | kumar     | badarpur  | new delhi | delhi       |  110044 |   8368914101 | xyz@123     | Friend | NULL |
|  2 | harsh      | kumar     | meethapur | new delhi | delhi       | 1011010 |   3743787878 | sssa@122    | Friend | NULL |
|  3 | Kalyan     | Kumar     | Andheri   | Mumbai    | Maharashtra |  530066 |   9882763845 | pl@p.com    | Friend | NULL |
|  4 | Atik       | Singh     | Dharavi   | Mumbai    | Maharashtra |  530044 |   9494631888 | mlk@mln.com | Friend | NULL |
|  5 | pratiik    | Singh     | panwel    | Mumbai    | Maharashtra |  530044 |   9426625688 | sh@mln.com  | Family | NULL |
+----+------------+-----------+-----------+-----------+-------------+---------+--------------+-------------+--------+------+
5 rows in set (0.03 sec)

mysql>


#UC13





mysql>  CREATE TABLE user_details(
    -> user_id INT PRIMARY KEY,
    -> first_name VARCHAR(100) NOT NULL,
    -> last_name VARCHAR(100) NOT NULL);
Query OK, 0 rows affected (0.78 sec)

mysql> DESC user_details;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| user_id    | int          | NO   | PRI | NULL    |       |
| first_name | varchar(100) | NO   |     | NULL    |       |
| last_name  | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>  CREATE TABLE location(
    -> user_id INT PRIMARY KEY,
    -> address VARCHAR(100) NOT NULL,
    -> city VARCHAR(50) NOT NULL,
    -> state VARCHAR(50) NOT NULL,
    -> zip VARCHAR(10) NOT NULL);
Query OK, 0 rows affected (0.36 sec)

mysql>  ALTER TABLE location
    -> ADD FOREIGN KEY(user_id) REFERENCES user_details(user_id);
Query OK, 0 rows affected (2.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC location;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| user_id | int          | NO   | PRI | NULL    |       |
| address | varchar(100) | NO   |     | NULL    |       |
| city    | varchar(50)  | NO   |     | NULL    |       |
| state   | varchar(50)  | NO   |     | NULL    |       |
| zip     | varchar(10)  | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> CREATE TABLE contact(
    -> user_id INT,
    -> phone VARCHAR(15),
    -> email VARCHAR(30),
    -> FOREIGN KEY(user_id) REFERENCES user_details(user_id));
Query OK, 0 rows affected (1.59 sec)

mysql> DESC contact;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| user_id | int         | YES  | MUL | NULL    |       |
| phone   | varchar(15) | YES  |     | NULL    |       |
| email   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.09 sec)

mysql> CREATE TABLE contact_type(
    -> type_id INT,
    ->  type_of_contact VARCHAR(20));
Query OK, 0 rows affected (0.48 sec)

mysql> ALTER TABLE contact_type
    -> ADD PRIMARY KEY(type_id);
Query OK, 0 rows affected (0.89 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC contact_type;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| type_id         | int         | NO   | PRI | NULL    |       |
| type_of_contact | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql>  CREATE TABLE user_contact_type_link(
    -> user_id INT,
    -> type_id INT,
    ->  FOREIGN KEY(user_id) REFERENCES user_details(user_id),
    -> FOREIGN KEY(type_id) REFERENCES contact_type(type_id));
Query OK, 0 rows affected (0.62 sec)

mysql> DESC user_contact_type_link;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| user_id | int  | YES  | MUL | NULL    |       |
| type_id | int  | YES  | MUL | NULL    |       |
+---------+------+------+-----+---------+-------+
2 rows in set (0.09 sec)

mysql> INSERT INTO user_details VALUES
    -> (1, 'Bill', 'Smith'),
    -> (2, 'Terisa', 'Brown'),
    ->
    -> (3, 'Charlie', 'Williams');
Query OK, 3 rows affected (0.17 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> Select * FROM user_details;
+---------+------------+-----------+
| user_id | first_name | last_name |
+---------+------------+-----------+
|       1 | Bill       | Smith     |
|       2 | Terisa     | Brown     |
|       3 | Charlie    | Williams  |
+---------+------------+-----------+
3 rows in set (0.00 sec)

mysql>  INSERT INTO location VALUES
    -> (1,'Street 1', 'City 1', 'California', '123456'),
    -> (2,'Street 2', 'City 2','California', '123457'),
    -> (3,'Street 3', 'City 3', 'Florida', '223457');
Query OK, 3 rows affected (0.12 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from location;
+---------+----------+--------+------------+--------+
| user_id | address  | city   | state      | zip    |
+---------+----------+--------+------------+--------+
|       1 | Street 1 | City 1 | California | 123456 |
|       2 | Street 2 | City 2 | California | 123457 |
|       3 | Street 3 | City 3 | Florida    | 223457 |
+---------+----------+--------+------------+--------+
3 rows in set (0.00 sec)

mysql> INSERT INTO contact VALUES
    -> (1,'9876543210', 'Bill@email.com'),
    -> (2,'9876543222', 'Terisa@email.com'),
    ->  (3,'8876543210', 'Charlie@email.com');
Query OK, 3 rows affected (0.25 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>  SELECT * from contact;
+---------+------------+-------------------+
| user_id | phone      | email             |
+---------+------------+-------------------+
|       1 | 9876543210 | Bill@email.com    |
|       2 | 9876543222 | Terisa@email.com  |
|       3 | 8876543210 | Charlie@email.com |
+---------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO contact_type VALUES
    -> (101,'Friend'),
    -> (102,'Family');
Query OK, 2 rows affected (0.24 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM contact_type;
+---------+-----------------+
| type_id | type_of_contact |
+---------+-----------------+
|     101 | Friend          |
|     102 | Family          |
+---------+-----------------+
2 rows in set (0.00 sec)

mysql>  INSERT INTO user_contact_type_link VALUES
    -> (1,101),
    -> (1,102),
    -> (2,101),
    ->  (3,102);
Query OK, 4 rows affected (0.18 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT *FROM user_contact_type_link ;
+---------+---------+
| user_id | type_id |
+---------+---------+
|       1 |     101 |
|       1 |     102 |
|       2 |     101 |
|       3 |     102 |
+---------+---------+
4 rows in set (0.00 sec)

mysql>  SELECT u.first_name,u.last_name,l.state
    -> from user_details u JOIN location l
    -> where u.user_id = l.user_id
    -> AND l.state = 'California';
+------------+-----------+------------+
| first_name | last_name | state      |
+------------+-----------+------------+
| Bill       | Smith     | California |
| Terisa     | Brown     | California |
+------------+-----------+------------+
2 rows in set (0.07 sec)

mysql> SELECT city,COUNT(City) FROM LOCATION;
+--------+-------------+
| city   | COUNT(City) |
+--------+-------------+
| City 1 |           3 |
+--------+-------------+
1 row in set (0.00 sec)

mysql> SELECT u.first_name,u.last_name,l.city
    -> from user_details u JOIN location l
    -> where u.user_id = l.user_id
    -> AND l.city = 'City 1'
    -> ORDER BY u.first_name;
+------------+-----------+--------+
| first_name | last_name | city   |
+------------+-----------+--------+
| Bill       | Smith     | City 1 |
+------------+-----------+--------+
1 row in set (0.00 sec)

mysql> SELECT u.first_name,u.last_name,l.state
    -> from user_details u JOIN location l
    -> where u.user_id = 2.user_id
    -> AND l.state = 'California'
    ->  ORDER BY u.first_name;

+------------+-----------+------------+
| first_name | last_name | state      |
+------------+-----------+------------+
| Bill       | Smith     | California |
| Terisa     | Brown     | California |
+------------+-----------+------------+


mysql> SELECT COUNT(u.user_id) AS number_of_contacts,t.type_of_contact
    -> FROM user_details u JOIN contact_type t JOIN user_contact_type_link l
    -> WHERE u.user_id = l.user_id
    -> AND t.type_id = l.type_id
    -> GROUP BY(t.type_of_contact);
+--------------------+-----------------+
| number_of_contacts | type_of_contact |
+--------------------+-----------------+
|                  2 | Friend          |
|                  2 | Family          |
+--------------------+-----------------+
2 rows in set (0.05 sec)

mysql>







