# AgileFalcon
## Deploy manager
ansible -i hosts deploy_management.yml -u root

## Deploy agents
ansible windows -i hosts deploy_agents.yml
