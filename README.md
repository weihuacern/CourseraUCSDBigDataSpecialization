# Coursera UCSD Big Data Specialization
Code for Coursera, Big Data Specialization. Link: https://www.coursera.org/specializations/big-data
All word under cloudera vmware virtual machine (5.12): cloudera-quickstart-vm-5.12.0-0-vmware

# Course 1 Introduction to Big Data

QUIZ: Running Hadoop MapReduce Program Quiz.
Word Counting for AliceInWonderland, run directly from Hadoop example:
```
# Copy file from local to HDFS
hadoop fs -copyFromLocal Course_1_IntroductionToBigData/WordCount/AliceWonderland_pg11.txt
hadoop fs -ls 
# Found 1 items
# -rw-r--r--   1 cloudera cloudera     167546 2017-12-25 12:03 AliceWonderland_pg11.txt

# Be careful, lower case for first wordcount
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar wordcount AliceWonderland_pg11.txt WordCount

# Copy the output to local
hadoop fs -copyToLocal WordCount/part-r-00000

# Then check the output to find what you want
```

Word median for Shakespeare text, run directly from Hadoop example:
```
hadoop fs -copyFromLocal Course_1_IntroductionToBigData/WordMedian/t8.shakespeare.txt
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar wordmedian t8.shakespeare.txt WordMedian
hadoop fs -ls WordMedian
hadoop fs -copyToLocal WordMedian/part-r-00000

```
