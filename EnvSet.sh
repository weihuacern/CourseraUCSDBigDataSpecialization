#!/bin/bash
HadoopJarPath=$(hadoop classpath)
#echo "$HadoopJarPath"
export CLASSPATH=$CLASSPATH:$HadoopJarPath
