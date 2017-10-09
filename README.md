Role Name
=========

This role install Apache v2.4.7.X
Requirements
------------

- Ubuntu Trusty & Xenial

Role Variables
--------------
      #Non-Redefinable vars
      apache_vg_name: vg_vroot
      apache_lv_name: lv_www
      apache_mpm_list:
        - worker
        - prefork
        - event

      #Redefinable Vars
      #apache_use_lvm: true
      #apache_lv_size: 5g
      apache_datadir: '/var/www'
      apache_security_configuration: '/etc/apache2/conf-available/security.conf'
      apache_default_vhost: '/etc/apache2/sites-available/default.conf'

      apache_mpm: event
      apache_mod_list:
        - headers
        - ssl
        - rewrite



Dependencies
------------

N / A


Example Playbook
----------------
      # Host file
      [apache_nodes]
      ansibleapache01l.btsys.local

      #Playbook
      - name: Apache installation
      hosts: apache_nodes
      become: yes
      roles:
        - ansible-apache


Use Case
----------------
      # Installation
      export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook -i hosts playbook.yml --ask-pass --ask-become-pass --tags installation

      # Testing
      export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook -i hosts playbook.yml --ask-pass --ask-become-pass --tags testing
