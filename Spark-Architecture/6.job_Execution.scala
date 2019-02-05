//Parallelizing an existing collection in your driver program
val data = Array(1,2,3,4,5)
val distData = sc.parallelize(data)

//Note: Change the path below according to your input file.

//Referencing a dataset in an external storage system
val tokenized = sc.textFile("/user/jvanchir/sampletxt.txt")

//Sample snippet
val tokenized = sc.textFile("/user/jvanchir/sampletxt.txt").flatMap(_.split(" "))
val wordCounts = tokenized.map((_, 1)).reduceByKey(_ + _)
wordCounts.collect
