# AgileFalcon
## Setup WinRM for Ansible
1. Download repo to a Windows machine
2. cd AgileFalcon
3. Edit list of windows hosts in windows_hosts.txt and hosts under [windows]
4. Set ansible_user and ansible_password in group_vars/windows
5. .\psexec_ansible_setup.ps1'

## Deploy manager
1. git clone https://github.com/Benster900/AgileFalcon.git
2. cd AgileFalcon 
3. ansible-playbook -i hosts deploy_management.yml -u root

## Deploy agents
1. ansible-playbook -i hosts deploy_agents.yml
