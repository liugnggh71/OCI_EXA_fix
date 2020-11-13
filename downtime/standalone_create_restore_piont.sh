sqlplus / as sysdba << 'EOF'

set echo on
alter system checkpoint;
alter system switch logfile;

show parameter recover
show parameter reten
-- alter system set db_recovery_file_dest_size=100000M scope=both;
-- alter system set db_recovery_file_dest='/archivelog/fast_recovery_area' scope=both;
-- alter system set db_flashback_retention_target=7200 scope=both;
-- alter database flashback on;
--
SET ECHO ON PAGESIZE 100 NUMWIDTH 20

SELECT * FROM gv$instance;

column restore_point_name new_value restore_point_name
select 'dt_rst_' || to_char(sysdate, 'YYYY_MM_DD_HH24_MI_SS')  restore_point_name from dual;
create restore point &restore_point_name;

SELECT *
  FROM v$restore_point
   WHERE SYSDATE - 1 < time;

SELECT * FROM V$FLASHBACK_DATABASE_LOG;

SELECT *
     FROM (  SELECT *
                 FROM V$FLASHBACK_DATABASE_LOGFILE
                         ORDER BY first_time DESC)
                          WHERE ROWNUM < 2;

SET NUMFORMAT 999,999,999,999
SELECT * FROM V$RECOVERY_FILE_DEST;
SET NUMFORMAT ""

EOF
