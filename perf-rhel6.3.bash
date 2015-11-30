#!/bin/bash

DATE=$(/bin/date +%Y%m%d-%H%m)


while true; do
echo "##################################################################";
echo "                            START OF SCRIPT                       ";
echo "                            $DATE                             ";
echo "##################################################################";
echo "##################################################################";
echo
echo
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "=============mpstat 2 3 -P ALL=============";mpstat 2 3 -P ALL;
echo "================================================================";
echo "=============vmstat 2 10=============";vmstat 2 5;
echo "================================================================";
echo "=============iostat 2 3============";iostat 2 3;
echo "================================================================";
echo "=============netstat -s============";netstat -s;
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
echo "=============sar -u ALL 2 3=============";sar -u ALL 2 3;
echo "================================================================";
echo "=============sar -P ALL 2 3=============";sar -P ALL 2 3;
echo "================================================================";
echo "=============sar -S 5 3, Report Swap=============";sar -S 5 3;
echo "================================================================";
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
echo "=============sar -v, inode and file handlers=============";sar -v;
echo "================================================================";
echo "=============sar -w 2 3, context switch per second=============";sar -w 2 3;
echo "================================================================";
echo "=============sar -n DEV 2 3, network devices=============";sar -n DEV 2 3;
echo "================================================================";
echo "=============sar -n EDEV 2 3, network device failures=============";sar -n EDEV 2 3;
echo "================================================================";
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
echo "=============sar -n IP 2 3=============";sar -n IP 2 3;
echo "================================================================";
echo "=============sar -n EIP 2 3=============";sar -n EIP 2 3;
echo "================================================================";
echo "=============sar -n TCP 2 3=============";sar -n TCP 2 3;
echo "================================================================";
echo "=============sar -n ETCP 2 3=============";sar -n ETCP 2 3;
echo "================================================================";
echo "=============sar -n UDP 2 3=============";sar -n UDP 2 3;
echo "================================================================";
echo "=============sar -n SOCK 2 3=============";sar -n SOCK 2 3;
echo "================================================================";
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
echo "=============sar -q, Report queue length and load averages=============";sar -q 2 3;
echo "================================================================";
echo "=============sar -R 2 3, Report memory=============";sar -R 2 3;
echo "================================================================";
echo "=============sar -r 2 3, Report memory utilization=============";sar -r 2 3;
echo "=============sar -b 2 3, Report I/O and transfer rate=============";sar -b 2 3;
echo "================================================================";
echo "=============sar -B 2 3, Report paging=============";sar -B 2 3;
echo "=============sar -W 1 3, Report page swap stats, i.e. Page swap in and out per second=============";sar -W 1 3;
echo "=============sar -w 1 3, Report task creation and system switching activity=============";sar -w 1 3;
echo "================================================================";
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
echo "=============sar -dp 2 3, Report activity for each block device=============";sar -dp 2 3;
echo "================================================================";
echo "=============iostat -d -x -N -t -m -z 2 3, Report device usage in Mbytes=============";iostat -d -x -N -t -m -z 2 3;
echo "================================================================";
echo "=============iostat -d -x -N -t -k -z 2 3, Report devices usage in kbytes=============";iostat -d -x -N -t -k -z 2 3;
echo "================================================================";
echo "=============iostat -c 2 3, cpu usage=============";iostat -c 2 3;
echo "================================================================";
echo "====================== top -c -aMH -n 1 -b ===================";
top -c -aMH -n 1 -b 
echo "================================================================";
#echo "=============sar -A, Report ALL=============";sar -A;
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx E N D xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx T I M E xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
date
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
sleep 20;
done | tee perfresults-$DATE.log
