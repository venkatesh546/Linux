#!/bin/bash
l=`netstat -antp|grep httpd|wc -l`
if [ $l -le 0 ] 
then
service httpd restart &> /dev/null
exit 1
else
exit 0
fi

