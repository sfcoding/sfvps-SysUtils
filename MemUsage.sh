#!/bin/bash

head -3 /proc/meminfo | awk 'FNR == 1 {tot+=$2} FNR == 3 {av+=$2}END {print "Tot: ",int(tot/1024) "MB","\nAvail: ", int(av/1024) "MB","\nUsed: ", int((1-av/tot)*100)"%"}' | column -t
#head -3 /proc/meminfo | awk 'FNR == 1 {tot+=$2} FNR == 3 {av+=$2}END {print "Tot: ",tot,"\nAvail: ", av,"\nUsedRatio: ", 1-av/tot}' | column -t
#head -3 /proc/meminfo | awk 'BEGIN{print "Tot","Avail","usedRatio"} FNR == 1 {tot+=$2} FNR == 3 {av+=$2}END {print tot, av, 1-av/tot}' | column -t
