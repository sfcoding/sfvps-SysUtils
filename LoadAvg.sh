#!/bin/bash

uptime | sed -n -e 's/^.*load average: //p' | awk ' {v1+=$1*100;v2+=$2*100;v3+=$3*100} {print "1min: ",v1"%","\n","5min: ",v2"%","\n","15min: ",v3"%" }' | column -t
