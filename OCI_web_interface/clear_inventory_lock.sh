ssh -i $HOME/cloud_agent_private_key.txt opc@127.0.0.1 sudo -u root rm -f /u01/app/oraInventory/locks/*.lock < /dev/null
ssh -i $HOME/cloud_agent_private_key.txt opc@127.0.0.1 sudo -u root chmod 777 /u01/app/oraInventory/locks < /dev/null
ssh -i $HOME/cloud_agent_private_key.txt opc@127.0.0.1 sudo -u root chown oracle.oinstall /u01/app/oraInventory/locks < /dev/null
ls -ld /u01/app/oraInventory/locks
ls -l /u01/app/oraInventory/locks
