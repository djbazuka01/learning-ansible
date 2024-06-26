# learning-ansible

#MUbeen


#Adhoc commands

ansible all -m ping

ansible all --list-host

ansible all -m gather_facts   #use can use --limit 192.168.52.110 for only one ip
#You can use this to get variables and use it in the playbook files

ansible all -m gather_facts --limit 192.168.52.136 | grep ansible_distribution


ansible all -m yum -a name=vi


#Running Playbooks

ansible-playbook install_apache.yml
ansible-playbook --ask-become-pass install_apache.yml

ansible-playbook --list-tags dite.yml
ansible-playbook --tags apache site.yml
ansible-playbook --tags "apache,db" site.yml

#playbooks

pre_task:   
#to run things in certain order in the playbook 






