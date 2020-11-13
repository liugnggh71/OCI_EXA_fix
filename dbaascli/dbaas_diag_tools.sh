find /u01/app/*/grid/cfgtoollogs/opatch -type f -name opatch\*.log -mtime +10 | xargs rm
find /u01/app/*/grid/cfgtoollogs/opatch/lsinv -type f -name lsinventory\*.txt -mtime +10 | xargs rm

find /u02/app/oracle/product/*/*/cfgtoollogs/opatch -type f -name opatch\*.log -mtime +10 | xargs rm
find /u02/app/oracle/product/*/*/cfgtoollogs/opatch/lsinv -type f -name lsinventory\*.txt -mtime +10  | xargs rm

find /home/oracle/dba_code/TFA/Binary -type f -size +100000 | xargs rm

nohup /var/opt/oracle/misc/dbaas_diag_tool.pl &

watch "ps -ef | grep diagcollect"
