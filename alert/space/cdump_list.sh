#########

BASEDIR=$(dirname $0)

find /u02 -type d -name cdmp_\* -exec ls -ld {} \;
echo find /u02 -type d -name cdmp_\* -exec rm -Rf {} \;

cat ${BASEDIR}/cdump_list.sh

