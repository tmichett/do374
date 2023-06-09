## Ad-hoc command to look at variables for all hosts 
### Important ... this only provides inventory variables and doesn't include play related or extra variables passed on CLI

ansible -m debug -a var=hostvars[inventory_hostname] all

## Can replaced the "all" above with specific host/group in inventory


