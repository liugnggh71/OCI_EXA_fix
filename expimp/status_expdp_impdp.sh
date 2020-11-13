sqlplus / as sysdba << 'EOF'

set linesize 134
column job_name format a30

SELECT JOB_NAME, OPERATION, STATE FROM dba_datapump_jobs;

column owner_name format a14
column state format a14
column job_mode format a14
SELECT sl.INST_ID,
       sl.sid,
       sl.serial#,
       sl.sofar,
       sl.totalwork,
       dp.owner_name,
       dp.state,
       dp.job_mode,
       sl.time_remaining
  FROM gv$session_longops sl, gv$datapump_job dp
 WHERE     sl.opname = dp.job_name
       AND sl.sofar != sl.totalwork
       AND sl.INST_ID = dp.INST_ID;

EOF
