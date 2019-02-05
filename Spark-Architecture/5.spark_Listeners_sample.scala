//To execute EventLoggingListener
val df = spark.read.json("/user/spark/applicationHistory/application_1540458187951_38909")
df.printSchema

df.select("Event").groupBy("Event").count.show(20,false)

//To execute StatsReportListener
spark.read.text("sampleTxt").count
