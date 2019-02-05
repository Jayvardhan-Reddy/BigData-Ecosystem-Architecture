# To enable EventLoggingListener
spark.eventLog.enabled=true
spark.eventLog.dir=hdfs://namenode/shared/spark-logs
                (OR)
spark.eventLog.enabled=true
spark.eventLog.dir=hdfs://user/spark/applicationHistory

# To enable StatsReportListener 
vi conf/log4j.properties
log4j.logger.org.apache.spark.scheduler.StatsReportListener=INFO

# Using configuration as part of spark-shell
./bin/spark-shell --conf spark.extraListeners=org.apache.spark.scheduler.StatsReportListener
