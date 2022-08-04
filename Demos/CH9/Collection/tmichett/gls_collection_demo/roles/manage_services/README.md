Manage Services
=========

This role is meant to manage services, ideally for services that were installed using the Deploy Packages role on managed hosts. A service list can be provided as a list. The role also allows for services to be stopped or restarted based on variables provided in the playbook or variables file(s). This role is meant to be used as a demonstration on how to author and create roles while providing a common and easy to use application.

Requirements
------------

This role assumes that services can be managed with the **service** module for Enterprise Linux distributions. The role does not utilize the **systemd** module as older systems don't understand **systemd**.

Role Variables
--------------

**svc_name** - This variable is the name the service  or a list of services to be started or controlled on the system. This is the "ONLY" required variable to be supplied.

**svc_state** - This variable is a default variable and set to "started". Other allowed values are "reloaded", "restarted", and "stopped".

**svc_enabled** - This variable is a default variable and set to "yes". Other allowed values are "yes" and "no" or "true" and "false"

Dependencies
------------

There are no dependencies for this playbook, but there is another related role published to work with Linux packages to install the services.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:



    ---
    - name: Manage Services
      hosts: serverc
      vars:
        svc:
          - svc_name: httpd
            svc_state: started
            svc_enabled: yes
      roles:
        - tmichett.manage_services



License
-------

BSD

Author Information
------------------

Travis Michette
tmichett@redhat.com
