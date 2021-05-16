
#UC1

mysql> CREATE DATABASE AddressBookService;
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








