sqlplus / as sysdba << EOF
alter system set pga_aggregate_target=30G scope=spfile;
alter system set sga_target=100G scope=spfile;
EOF

echo $ORACLE_SID sized up
