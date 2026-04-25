#!/bin/bash +x
ansible-playbook -i /home/nat/lab_06_roles/inventory.ini /home/nat/lab_06_roles/playbook.yml --dif --ask-become-pass
