#!/bin/bash

#ssh-keygen -t ed25519 -C "for Ansible"
#ssh-keygen -t ed25519 -C "for root user"   #only one time

ip=()
  while IFS= read -r line; do
    if [[ $line =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]] ; then
      ip+=("$line")
    fi
done < "inventory"
#cd
#cd .ssh
#echo '99856722' > passfile
#echo '$6$eERc3dZluSMhuU1U$rFpkIDgS41uWHBVG4xAVGCy3QaLtQZMxllghrTRgUa44oY3.XfRY1UoQ7Blt6ojkPHAO9D7/g9XiUCI0srkUn/' > passfile
readarray -t pass < passfile
#rm passfile
#touch passfile

for i in ${!ip[@]}; do

   sshpass -p ${pass[$i]} ssh -o StrictHostKeyChecking=no root@${ip[$i]} "exit"
    
    sshpass -p ${pass[$i]} ssh-copy-id -i /root/.ssh/ansible.pub ${ip[$i]}  # mubeen@192.168.52.136

    sshpass -p ${pass[$i]} ssh-copy-id -i /root/.ssh/id_ed25519.pub ${ip[$i]}  # mubeen@192.168.52.136
done

ansible all -m ping  #checking to see if the connection has been established
