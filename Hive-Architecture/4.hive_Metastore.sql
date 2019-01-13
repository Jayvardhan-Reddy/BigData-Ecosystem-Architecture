--Login to the Relational Database(RDBMS) that you are using.

-- To login using Cluster
mysql -u hive -h hostname -p 

-- For Quickstart VM Cloudera
mysql -u hive -p 

mysql> show databases;

mysql> use metastore;
-- Reading table information for completion of table and column names

mysql> show tables;
-- Out of the 52 tables in metastore DB these 3 gives the most relevant hive table information regarding the schema and structure.

+---------------------------+
| Tables_in_metastore       |
+---------------------------+
| COLUMNS_V2                |
| DBS                       |
| TABLE_PARAMS              |
| TBLS                      |
+---------------------------+

/* TBLS - Store all table information
   DBS - Database information
   COLUMNS_V2 - column name and the datatype */

mysql> SELECT * FROM TBLS;

+--------+-------------+-------+------------------+----------+-----------+-------+--------------------+----------------+--------------------+--------------------+----------------+
| TBL_ID | CREATE_TIME | DB_ID | LAST_ACCESS_TIME | OWNER    | RETENTION | SD_ID | TBL_NAME           | TBL_TYPE       | VIEW_EXPANDED_TEXT | VIEW_ORIGINAL_TEXT | LINK_TARGET_ID |
+--------+-------------+-------+------------------+----------+-----------+-------+--------------------+----------------+--------------------+--------------------+----------------+
|      4 |  1497161273 |     1 |                0 | cloudera |         0 |     4 | web_logs           | MANAGED_TABLE  | NULL               | NULL               |           NULL |
|     11 |  1534358853 |     6 |                0 | root     |         0 |    16 | student            | EXTERNAL_TABLE | NULL               | NULL               |           NULL |
|     34 |  1534660121 |     1 |                0 | jvanchir |         0 |   111 | orders             | MANAGED_TABLE  | NULL               | NULL               |           NULL |
+--------+-------------+-------+------------------+----------+-----------+-------+--------------------+----------------+--------------------+--------------------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM DBS;

+-------+-----------------------+-----------------------------------------------------------------------+------------+------------+------------+
| DB_ID | DESC                  | DB_LOCATION_URI                                                       | NAME       | OWNER_NAME | OWNER_TYPE |
+-------+-----------------------+-----------------------------------------------------------------------+------------+------------+------------+
|     1 | Default Hive database | hdfs://quickstart.cloudera:8020/user/hive/warehouse                   | default    | public     | ROLE       |
|     6 | NULL                  | hdfs://quickstart.cloudera:8020/user/hive/warehouse/jvanchir_cards.db | jay        | jvanchir   | USER       |
|    16 | NULL                  | hdfs://quickstart.cloudera:8020/user/hive/warehouse/retail.db         | retail     | cloudera   | USER       |
+-------+-----------------------+-------------------------------------------------------------------+------------+------------+------------+

mysql> SELECT * FROM COLUMNS_V2;

+-------+---------+---------------------+--------------+-------------+
| CD_ID | COMMENT | COLUMN_NAME         | TYPE_NAME    | INTEGER_IDX |
+-------+---------+---------------------+--------------+-------------+
|     1 | NULL    | order_id              | int        |           3 |
|     1 | NULL    | order_date            | string     |           2 |
|     2 | NULL    | order_customer_id     | int        |           0 |
|     2 | NULL    | order_status          | string     |           1 |
+-------+---------+---------------------+--------------+-------------+
