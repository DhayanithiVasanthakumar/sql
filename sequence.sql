student=# CREATE DATABASE hotel;
CREATE DATABASE
student=# \c hotel
You are now connected to database "hotel" as user "postgres".
hotel-# CREATE SEQUENCE mysequence
hotel-# INCREMENT 5
hotel-# START 10;
hotel=# CREATE SEQUENCE mysequence
hotel-# INCREMENT 5
hotel-# START 10;
CREATE SEQUENCE
hotel=# START nextval('mysequence');
ERROR:  syntax error at or near "nextval"
LINE 1: START nextval('mysequence');
              ^
hotel=# SELECT nextval('mysequence');
 nextval
---------
      10
(1 row)


hotel=# SELECT nextval('mysequence');
 nextval
---------
      15
(1 row)


hotel=# SELECT nextval('mysequence');
 nextval
---------
      20
(1 row)


hotel=#
// decerse sequence...................
hotel=#
hotel=#
hotel=# CREATE SEQUENCE decrese
hotel-# INCREMENT -1
hotel-# MINVALUE 1
hotel-# MAXVALUE 5
hotel-# START 5
hotel-# CYCLE;
CREATE SEQUENCE
hotel=# SELECT nextval('decrese');
 nextval
---------
       5
(1 row)


hotel=# SELECT nextval('decrese');
 nextval
---------
       4
(1 row)


hotel=# SELECT nextval('decrese');
 nextval
---------
       3
(1 row)


hotel=# SELECT nextval('decrese');
 nextval
---------
       2
(1 row)


hotel=# SELECT nextval('decrese');
 nextval
---------
       1
(1 row)

// another method SEQUENCE.................................
hotel=#
hotel=#
hotel=# CREATE TABLE order_details(order_id SERIAL,item_id INT NOT NULL,product_id INT,product_name TEXT NOT NULL,PRIMARY KEY(order_id,item_id));
CREATE TABLE
hotel=# CREATE SEQUENCE order_item_id
hotel-# START 10
hotel-# INCREMENT 10
hotel-# MINVALUE 10
hotel-# OWNED BY order_details.item_id;
CREATE SEQUENCE
hotel=#
hotel=#
hotel=# INSERT INTO order_details(order_id,item_id,product_id,product_name)
hotel=# VALUES(100,nextval('order_item_id'),'dvd',100),
hotel-# (100,nextval('order_item_id'),'tv',500),
hotel-# (100,nextval('order_item_id'),'sepaker',700);
 column1 | column2 | column3 | column4
---------+---------+---------+---------
     100 |      10 | dvd     |     100
     100 |      20 | tv      |     500
     100 |      30 | sepaker |     700
(3 rows)


hotel=#
