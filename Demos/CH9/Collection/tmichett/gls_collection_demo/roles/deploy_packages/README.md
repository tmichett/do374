Deploy Packages
=========

This role is meant to deploy packages to managed hosts. A package list can be provided as a list. The role also allows for packages to be removed or updated based on variables provided in the playbook or variables file. This role is meant to be used as a demonstration on how to author and create roles while providing a common and easy to use application.

Requirements
------------

This role assumes that packages are being installed to an RPM-based Linux distribution and that YUM is available as the YUM module is being used to install, remove, update packages.

Role Variables
--------------

**pkg_name** - This variable is the name of the package or a list of package names that can be installed on the system. This is the "ONLY" required variable to be supplied.

**pkg_state** - This variable is a default variable and set to "latest". The allowed values for this variable are "latest" and "present" to install the package(s) or "absent" to ensure that the package has been removed.

Dependencies
------------

There are no dependencies for this playbook, but there is another related role published to work with Linux services.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:



    ---
    - name: Install Software Packages
      hosts: serverc
      vars:
        pkg_name:
          - vim
          - tree
          - httpd
      roles:
        - tmichett.deploy_packages



License
-------

BSD

Author Information
------------------

Travis Michette
tmichett@redhat.com
