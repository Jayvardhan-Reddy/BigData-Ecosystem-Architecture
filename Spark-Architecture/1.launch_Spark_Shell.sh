# Command to launch Spark-shell
spark-shell --master yarn \
  --conf spark.ui.port=12345 \
  --num-executors 3 \
  --executor-cores 2 \
  --executor-memory 500M
