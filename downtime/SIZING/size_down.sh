sqlplus / as sysdba << EOF
alter system set pga_aggregate_target=5G scope=spfile;
alter system set sga_target=10G scope=spfile;
EOF
echo $ORACLE_SID sized down
