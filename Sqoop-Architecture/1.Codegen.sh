sqoop codegen \
	--connect jdbc:mysql://ms.jayReddy.com:3306/retail_db \
	--username retail_user \
	--password ******* \
	--table products
  
  # To view the generated jar 
  $ cd /tmp/sqoop-jvanchir/compile/978d12514ccf372cddf4b9f1c70dd183/ 
  $ ls
  
  # Output:  
  products$1.class  products$5.class                   products.jar
  products$2.class  products$6.class                   products.java
  products$3.class  products.class
  products$4.class  products$FieldSetterCommand.class
  
  # To view the generated Java file 
  $ cat products.java
  
  
