ssh -i $HOME/cloud_agent_private_key.txt opc@127.0.0.1 sudo -u grid /home/grid/dba_code/grid/cluster_check.sh

hostname
ssh -i $HOME/cloud_agent_private_key.txt opc@127.0.0.1 sudo -u grid /home/grid/dba_code/grid/crs_check.sh
