
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
