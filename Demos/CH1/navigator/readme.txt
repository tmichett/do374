sudo yum install ansible-navigator

## If Connected

export EE=quay.io/tmichett/travis_do374:1.0
ansible-navigator run playbook.yml --eei $EE
ansible-navigator run playbook.yml --eei $EE -m stdout



## If Disconnected

podman login hub.lab.example.com
export EE=hub.lab.example.com/ee-supported-rhel8:latest
ansible-navigator run playbook.yml --eei $EE
ansible-navigator run playbook.yml --eei $EE -m stdout
