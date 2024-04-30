# learning-ansible

#MUbeen


#Adhoc commands

ansible all -m ping

ansible all --list-host

ansible all -m gather_facts   #use can use --limit ip to only 1 ip

ansible all -m yum -a name=vi


#Running Playbooks

ansible-playbook install_apache.yml



 
