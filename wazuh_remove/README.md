#Wazuh uninstall
run twice:
ANSIBLE_ROLES_PATH=../roles ansible-playbook wazuh_uninstall.yml -i /path_to/inventory.yml