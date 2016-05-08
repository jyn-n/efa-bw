#!/bin/sh

cat $1/* \
| sed  's/http:.*$//' \
| sort \
| uniq -c \
| sed '/^\W*1\W/d' \
| sed 's/^\W*[^ ]* //' \
| while read s; do
	grep -n "$s" $(ls $1 | sed "s/^/$1\//") \
	| column -ts: \
	| while read l; do
		file=$(echo $l | awk '{print $1}')
		line=$(echo $l | awk '{print $2}')
		sed -i "${line}s/^/$(namei $file | sed -n 's/^\W*-\W*//p') /" "$file"
	done
done
