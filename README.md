# BigData Ecosystem Architecture

<img src="images/Big_data_Ecosystem.png" width="100%" height="400">

## Internal working of Bigdata and it's ecosystems such as
- The background process of resource allocation, database connection.
- How the data is distributed across the nodes.
- Execution life-cycle on submitting a Job.

** _Note: Refer the links metioned below under each ecosystem for detailed explanation_ **

## 1. HDFS :elephant:

The various underlying process that takes place during the storage of a file into HDFS such as:

- Type of scheduler

- Block & Rack information

- File size

- File location

- Replication information about the file(Over-replicated blocks, Under-replicated blocks, ...)

- Health status of the file

Please click on the link below to know the execution and flow process

## 2. SQOOP :octocat:

Used to perform 2 main operations.

- Sqoop Import: 
  - To ingest data from any source such as traditional databases into hadoop file system HDFS

- Sqoop Export: 
  - To export data from hadoop file system HDFS to any traditional databases

To support the above two operations internally a CodeGen is used.

- Sqoop CodeGen:

  -  To compile metadata and other relative information into java class file & create a Jar

Please click on the link below to know the execution and flow process

## 3. HIVE :honeybee:

It has mainly 4 components

- Hadoop core components(Hdfs, MapReduce)

- Metastore

- Driver

- Hive Clients

Please click on the link below to know the execution and flow process

:link: [Hive Architecture in Depth](https://www.linkedin.com/pulse/hive-architecture-indepth-jayvardhan-reddy-vanchireddy/)

## 4. SPARK :boom:

The various phases involved before and during the execution of a spark job.

- Yarn resource allocation & launching of executors (containers) on executing a job.

- Setting up environment variables, job resources.

- Spark Context
  - It is the heart of spark application.

- Spark Listener Events
  - LiveListenerBus
  - JobProgressListener
  - Create Spark WebUI

- Netty-based RPC - To communicate between worker nodes, driver (spark context), executors.

- Event Sources
  - DAG Scheduler
  - TaskSchedulerImpl
  - SchedulerBackend : CourseGrainedSchedulerBackend
  - Executors

- Execution Plan
  - Logical Plan (Lineage)
  - Physical Plan (Stages)

Please click on the link below to know the execution and flow process

## 4.1 SPARK Abstraction Layers & Internal Optimization Techniques used :boom:

It has 3 different variants as part of it.

- RDD (Resilient Distributed Datasets)
  - DAG Scheduler
  - Logical Plan (Lineage)
  - Physical Plan (Stages)
  
- DataFrames
  - Tungsten Engine
  - Default source or Base relation
  
- Datasets
