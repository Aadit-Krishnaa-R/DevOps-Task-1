#!/bin/bash
# To Display the uptime of system
uptime=$(uptime -p)
#To Display disc usage
disc_usage=$(df -h)
#To display memory usgae
memory_usage=$(free)
#Utilisation
util=$(top | head -n 5)
#most expensive processes(first 6 lines as lot of processes)
expensive_process=$(ps --sort=-pcpu | head -n 6)
#open tcp ports(first 5 lines as lot of processes)
tcp_open=$(sudo netstat -at | head -n 5)
#to find current connections(first 15 lines as lot of processes)
curr_connect=$(netstat --all | head -n 15)
#to find running processes
process=$(ps)



#to transfer the above data to log file
echo "Uptime of Computer:${uptime}"
echo "Disc Usage of system:${disc_usage}" 
echo "Memory Usage of system:${memory_usage}" 
echo "Utilizations of system:${util}" 
echo "Expensive processes of system: ${expensive_process}" 
echo "Open TCP Ports:${tcp_open}" 
echo "Current Connections of system:${curr_connect}" 
echo "Running Processes of system:${process}" 