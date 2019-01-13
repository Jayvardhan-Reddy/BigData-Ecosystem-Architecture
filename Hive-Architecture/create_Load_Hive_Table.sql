-- Create a Database

 CREATE DATABASE IF NOT EXISTS jvanchir_cards;

 use jvanchir_cards;

-- Create a Hive Managed Table with default warehouse directory location.

 create table orders (
   order_id int,
   order_date string,
   order_customer_id int,
   order_status string
 ) row format delimited fields terminated by ','
  STORED AS TEXTFILE;

-- To load data into Hive table i.e from LFS to HDFS.

 LOAD DATA LOCAL INPATH '/home/jvanchir/hiveInputData/data/orders/part-00000' INTO TABLE orders;

-- To explicitly point Hive table to the location of HDFS

 create table orders (
   order_id int,
   order_date string,
   order_customer_id int,
   order_status string
 ) row format delimited fields terminated by ','
  STORED AS TEXTFILE;
  location '/user/jvanchir/daily_revenue/orders';
