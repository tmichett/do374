Role Name
=========

This is a role that does absolutely nothing. It demonstrates how a role is run and can be used in the playbook demo. This is meant to show how variables are leveraged in a role and how they are evaluated when running playbooks.

Requirements
------------

This role is can be used with any playbook, but was designed specifically to be run with demo playbook roles.

Role Variables
--------------

There are four variables that can be used in the Role. Two of the variables appear in the ROLE and are already defined and two of the variables come from the project, one is a Playbook variable and the other is an Inventory variable.

**var_main**: Main Task in ROLE (DEFAULTS Variable)

**var_vars** Main Task in ROLE (VARS Variable)

**var_playbook** : Main Task in ROLE (PLAYBOOK Variable)

**var_inventory**: Main Task in ROLE (Inventory Variable)



Dependencies
------------

There are no dependencies for this role.

Example Inventory
----------------

```bash
servera 
serverb
serverc
serverd

[all:vars]
var_inventory=This is a ROLE variable from Inventory
```

Example Playbook
----------------

Need to also define an inventory variable.


```yaml
---
- name: This is a sample playbook to demonstrate order with ROLES
  hosts: localhost
  vars:
    - var_playbook: This is a ROLE Variable from the PLAYBOOK 
  roles:
    - tmichett.role-demo-debug
```

License
-------

GPS

Author Information
------------------

Travis Michette tmichett@redhat.com
