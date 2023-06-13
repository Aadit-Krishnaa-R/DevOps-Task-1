#creating account for bigger brother
sudo useradd -s /bin/bash -d /home/Top-G -m Top-G

read -p "Do You Want to Enter the Siblings Details(y/n)" choice
if [ $choice == y ]
then
    read -p "Enter your Name" name
    read -p "Enter your sibling number in the format Siblingno" sno
    echo "$name $sno" >> ./user-info.txt
else

    #creating accounts for siblings
    detailsfile="./user-info.txt"
    cat $detailsfile | while read -r -a line;
    do 
        Name=${line[0]}
        # echo $Name
        sudo useradd -s /bin/bash -d /home/$Name -m $Name
        sudo touch /home/$Name/website.txt
        sudo chown $Name /home/$Name/website.txt
        sudo chmod u=r /home/$Name/website.txt
        sudo chgrp Top-G /home/$Name
        sudo chmod g=rwx /home/$Name
        sudo chgrp Top-G /home/$Name/website.txt
        sudo chmod g=rw /home/$Name/website.txt
    done
fi