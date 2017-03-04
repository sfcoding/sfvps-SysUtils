#!/bin/bash

df -hl | grep '/dev/vda1' | awk '{size+=$2;available+=$4;percent+=$5;} END{print "TotalSize: ",size"GB","\nAvailable: ",available"GB","\nUsage(%): ",percent"GB"}' | column -t 
