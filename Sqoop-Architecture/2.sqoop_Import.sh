sqoop import \
  --connect jdbc:mysql://ms.jayReddy.com:3306/retail_db \
  --username retail_user \
  --password ******* \
  --table products \
  --warehouse-dir /user/jvanchir/sqoop_prac/import_table_dir \
  --delete-target-dir
