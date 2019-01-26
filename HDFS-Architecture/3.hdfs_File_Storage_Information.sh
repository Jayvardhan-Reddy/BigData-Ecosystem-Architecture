#Details such as health status, location, rack, location, blocks of the hdfs file stored
  hdfs fsck sampletxt.txt -locations -racks -blocks -files
 
#Output
  Connecting to namenode via http://172.16.1.101:50070/fsck?ugi=jvanchir&locations=1&racks=1&blocks=1&files=1&path=%2Fuser%2Fjvanchir%2Fsampletxt.txt
  FSCK started by jvanchir (auth:SIMPLE) from /172.16.1.113 for path /user/jvanchir/sampletxt.txt at Sun Dec 23 12:51:20 EST 2018
  /user/jvanchir/sampletxt.txt 28 bytes, 1 block(s):  OK
  0. BP-292116404-172.16.1.101-1479167821718:blk_1086459938_12729621 len=28 repl=2 [/default-rack/172.16.1.104:50010, /default-rack/172.16.1.103:50010]

  Status: HEALTHY
   Total size:    28 B
   Total dirs:    0
   Total files:   1
   Total symlinks:                0
   Total blocks (validated):      1 (avg. block size 28 B)
   Minimally replicated blocks:   1 (100.0 %)
   Over-replicated blocks:        0 (0.0 %)
   Under-replicated blocks:       0 (0.0 %)
   Mis-replicated blocks:         0 (0.0 %)
   Default replication factor:    2
   Average block replication:     2.0
   Corrupt blocks:                0
   Missing replicas:              0 (0.0 %)
   Number of data-nodes:          5
   Number of racks:               1
  FSCK ended at Sun Dec 23 12:51:20 EST 2018 in 0 milliseconds

  The filesystem under path '/user/jvanchir/sampletxt.txt' is HEALTHY
