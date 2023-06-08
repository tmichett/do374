[student@workstation Resuing_Content]$ ansible-playbook Website_Past.yml

## Point out error
# ERROR! couldn't resolve module/action 'firewalld'. This often indicates a misspelling, missing collection, or incorrect module path.


## Show playbooks
#
#  - Website_Past.yml
#  - Website_Future.yml
## Possibly show with diff
## [student@workstation Resuing_Content]$ diff Website_Past.yml Website_Future.yml -y --color
## [student@workstation ~]$ vimdiff Website_Past.yml Website_Future.yml 

[student@workstation Resuing_Content]$ ansible-navigator run Website_Past.yml --eei $EE -m stdout


