# AgileFalcon
## Setup WinRM on Windows agents for Ansible
1. Download repo to a Windows machine
2. cd AgileFalcon
3. Edit list of windows hosts in windows_hosts.txt and hosts under [windows]
3. Edit ip_addr in group_vars/all. This ip_addr is the IP address of the graylog box
4. Set ansible_user and ansible_password in group_vars/windows
5. .\psexec_ansible_setup.ps1'

## Deploy manager
1. git clone https://github.com/Benster900/AgileFalcon.git
2. cd AgileFalcon
2. vim hosts and set manager_node
2. cp group_vars/all.example group_vars/all
2. vim group_vars/all and set base_hostname, base_domain, slack_token, and slack_channel
2. cp group_vars/manager.example group_vars/manager
2. vim group_vars/manager set graylog_admin_password
3. ansible-playbook -i hosts deploy_management.yml -u root

## Deploy agents
1. ansible-playbook -i hosts deploy_agents.yml

## To do
1. Replace ip_addr with {{ group }}
