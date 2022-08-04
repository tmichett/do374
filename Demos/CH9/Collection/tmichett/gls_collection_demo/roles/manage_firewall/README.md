Manage Firewall Rules
=========

This role is meant to manage firewall and network connectivity, ideally for services that were installed using the Deploy Packages role and maintained with the Manage Services role on managed hosts. A service list can be provided as a list. The role also allows for firwall services to be stopped or restarted based on variables provided in the playbook or variables file(s) as well as firewall rules to be added and removed. This role is meant to be used as a demonstration on how to author and create roles while providing a common and easy to use application.

Requirements
------------

This role assumes that services can be managed with the **firewalld** module for Enterprise Linux distributions.

Role Variables
--------------

**fw_svc_name** - This variable is the name the service  or a list of services to be started or controlled on the system. This is the "ONLY" required variable to be supplied if **fw_port/fw_proto** are not defined.

**fw_state** - This variable is a default variable and set to "enabled". Other allowed values are "disabled". This variable will determine if the firewall is running.

**fw_immediate** - This variable is a default variable and set to "yes". Other allowed values are "no". This variable controls if the rules are applied to the running firewall.

**fw_permanent** - This variable is a default variable and set to "true". Other allowed values are "false". This variable controls if the rules are saved to the firewall XML file in **/etc/firewalld**.

**fw_port** - This variable is the numerical value of the firewall port. This is variable along with **fw_proto** are required variables and must be supplied if **fw_svc_name** is not defined.

**fw_proto** - This variable is the network protocol for the firewall port. Allowed values are "tcp" and "udp" typically, but other protocols like "icmp" maybe be used. This is variable along with **fw_port** are required variables and must be supplied if **fw_svc_name** is not defined.

Dependencies
------------

There are no dependencies for this playbook, but there is another related role published to work with Linux packages to install the services.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:



    ---
    - name: Manage Firewall
      hosts: serverc
      vars:
        fw:
          - fw_port: 8080
            fw_proto: tcp
          - fw_port: 9090
            fw_proto: tcp
        fw_svc:
          - fw_svc_name: http
          - fw_svc_name: https
      roles:
        - tmichett.manage_firewall



License
-------

BSD

Author Information
------------------

Travis Michette
tmichett@redhat.com
