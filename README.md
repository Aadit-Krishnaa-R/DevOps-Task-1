# DevOps-Task-1

Install git package to get started :

1)sudo apt update

sudo apt install git

git clone https://github.com/Aadit-Krishnaa-R/DevOpsTask-1.git

Run genSibling.sh as root user sudo bash genSiblingt.sh

2)In terminal ,

run the following

chmod +x ./script.sh (To make the file executable during cronjob)

crontab -e

Modify the file by adding this line

00 18 * * * cd /home/aaditkrishnaar/Desktop/DevOpsTask-1 && /bin/bash script.sh > comp_log.txt 2>&1

Enter the relative paths of DevOpsTask-1(where you have git cloned) in the above piece of code
Ctrl+X and Y to save modifications to Crontab and the CronJob would take place
