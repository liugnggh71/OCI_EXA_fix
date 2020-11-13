BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

java -cp /usr/local/lib/saxon-he-10.2.jar net.sf.saxon.Query -t -qs:"current-date()"
java -cp /usr/local/lib/saxon-he-10.2.jar net.sf.saxon.Transform -t -s:${BASEDIR}/samples/data/books.xml -xsl:${BASEDIR}/samples/styles/books.xsl -o:/tmp/1/temp1.html

cat /tmp/1/temp1.html

java -cp /usr/local/lib/saxon-he-10.2.jar net.sf.saxon.Query -t -s:${BASEDIR}/samples/data/books.xml -q:${BASEDIR}/samples/query/books-to-html.xq -o:/tmp/1/temp2.html

cat /tmp/1/temp2.html
