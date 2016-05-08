#!/bin/sh

echo "#!/bin/sh" > $2
echo >> $2
echo "function stopid() {" >> $2
echo "case \$1 in" >> $2

cat $1/* \
| sed \
-e 's/^/\t"/' \
-e 's/ http:.*name_dm=/")\n\t\techo "/' \
| sed \
-e 's/.type_dm=any.*$/"\n\t\t;;/' >> $2

echo 'esac' | sed 's/^/\t/' >> $2
echo "}" >> $2
