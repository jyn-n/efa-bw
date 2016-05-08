#!/bin/sh

sed -e 's/^von:[^,]*, //' -e 's/&itdLPxx_dateTime.*$//' < $1 > urls/$1
