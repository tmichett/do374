## Ad-hoc command to look at variables for all hosts 

ansible -m debug -a var=hostvars[inventory_hostname] all

## Can replaced the "all" above with specific host/group in inventory


