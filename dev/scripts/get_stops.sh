#!/bin/sh

ls $1 | while read f; do
	sed 's/ http:.*$//' < $1/$f > $2/$f
done
