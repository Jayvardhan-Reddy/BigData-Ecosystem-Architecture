#To copy file from LFS(Local File System) to HDFS
  hdfs dfs -put /home/jay/sampletxt.txt /user/jvanchir/
  
#To preview the file Size
  hdfs dfs -du -s -h sampletxt.txt
  
#To preview the file content
  hdfs dfs -cat sampletxt.txt
