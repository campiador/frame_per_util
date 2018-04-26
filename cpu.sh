#!/bin/bash

the_results=`adb shell dumpsys cpuinfo`

#echo "$the_results"

#echo ${#the_results}

last_line=${the_results##*$'\n'}



#echo "$last_line"
#echo ${#last_line}

last_line="${last_line//%}"
#echo "$last_line"

IFS=' '; arrResults=($last_line); unset IFS;

#echo $arrResults



total_usage="${arrResults[0]}"
user_usage="${arrResults[2]}"
kernel_usage="${arrResults[5]}"
iowait_usage="${arrResults[8]}"
softirq_usage="${arrResults[11]}"

echo $total_usage