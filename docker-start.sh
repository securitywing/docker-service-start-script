#!/bin/bash
#This script will check servie status of dcoker
#and run the docker service in Ubuntu if it is not running.
systemctl status docker | grep dead
result=$(echo $?)
echo "The result is $result"
echo "Description:if the result is '0', it means docker is not runni$
echo $result
if [ $result -eq 0 ]
then
     echo "Starting Docker"
     echo $(systemctl start docker)
else
   echo "Docker is already running"

fi
echo "exit the program"
exit 0

