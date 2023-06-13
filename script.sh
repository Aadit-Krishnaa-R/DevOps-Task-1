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
echo "Uptime of Computer:${uptime}" | cat >> comp_log.txt
echo "Disc Usage of system:${disc_usage}" | cat >> ./comp_log.txt
echo "Memory Usage of system:${memory_usage}" | cat >> ./comp_log.txt
echo "Utilizations of system:${util}" | cat >> ./comp_log.txt
echo "Expensive processes of system: ${expensive_process}" | cat >> ./comp_log.txt
echo "Open TCP Ports:${tcp_open}" | cat >> ./comp_log.txt
echo "Current Connections of system:${curr_connect}" | cat >> ./comp_log.txt
echo "Running Processes of system:${process}" | cat >> ./comp_log.txt