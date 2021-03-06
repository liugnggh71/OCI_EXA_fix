sqlplus / as sysdba << EOF
alter session set container=$1;
CREATE OR REPLACE DIRECTORY
MY_DATAPUMP_DIR AS
'/acfs01/acfs/data_dump';

GRANT READ, WRITE ON DIRECTORY MY_DATAPUMP_DIR TO EXP_FULL_DATABASE;

GRANT READ, WRITE ON DIRECTORY MY_DATAPUMP_DIR TO IMP_FULL_DATABASE;
EOF
