#!/bin/bash

ext_ip=`curl -s https://freedns.afraid.org/dynamic/check.php | grep REMOTE_ADDR |  awk '{print $3}'`
cidr=$ext_ip"/32"
echo "{ \"my_ip\" : \""$cidr"\" }"
