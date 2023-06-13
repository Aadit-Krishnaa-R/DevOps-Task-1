# chmod 777 ./system_info.txt
#Formatting system_info.txt

echo "========================" | cat > ./system_info.txt
echo "      SYSTEM INFO" | cat >> ./system_info.txt
echo "========================" | cat >> ./system_info.txt

#to find desktop processor
dp=$(lscpu | grep 'Model name')
echo "Desktop processor: ${dp}" | cat >> system_info.txt
syskernal=$(hostnamectl | grep 'Kernal')
echo "System ${syskernal}" | cat >> ./system_info.txt
op=$(hostnamectl | grep 'Operating System')
echo "${op}" | cat >> ./system_info.txt
dm=$(grep MemTotal /proc/meminfo)
echo "Desktop memory: ${dm}" | cat >> ./system_info.txt
sno=$(sudo hdparm -i /dev/sd* | grep 'SerialNo' | head -n 1 | sed -e 's/\(,\|Model\|=\|VBOX\|HARDDISK\|FwRev\|1.0\|SerialNo\)//g')
echo "Serial Number : ${sno}" | cat >> ./system_info.txt
ip=$(hostname -I)
echo "System IP:${ip}" | cat >> ./system_info.txt
echo "-------------------------" | cat >> ./system_info.txt
soft=$(apt list | head -n 4 | tail -n 2)
echo -e "Installed software: \n${soft}" | cat >> ./system_info.txt
echo "=========================" | cat >> ./system_info.txt


