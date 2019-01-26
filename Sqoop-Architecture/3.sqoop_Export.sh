sqoop export \
  --connect jdbc:mysql://ms.jayReddy.com:3306/retail_export \
  --username retail_user \
  --password ******* \
  --table product_sqoop_exp \
  --export-dir /user/jvanchir/sqoop_prac/import_table_dir/products
