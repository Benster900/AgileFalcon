# AgileFalcon
## Deploy manager
ansible -i hosts --private-key=<ssh private key> deploy_management.yml

## Deploy agents
ansible windows -i hosts deploy_agents.yml
