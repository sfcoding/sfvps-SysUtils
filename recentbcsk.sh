#!/bin/bash

if [ $1 ]; then
    N=$1
else
    N=3
fi

megals -l | awk '/Root\/sf-backup\//' | tail -$N - | awk '{print substr($7,17), int($4/1024^2)"M"}' -
