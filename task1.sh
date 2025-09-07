#!/bin/bash



read -p "Which server you want to ping ?" serv_add

ping -c5 -w6 $serv_add


# here -c5 only print 5 rows and -w6 this will notify that wait for 6 seconds

