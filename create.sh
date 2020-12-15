#!/bin/bash
#get list of lists
curl -O https://v.firebog.net/hosts/csv.txt

IFS=","
while read -r type tick website name list
do
	#create file name
	filename="$(echo $name | tr -cd '[:alnum:]._-').dns"
	#crate header
	echo -e "#\n# $name\n#\n#" > "$filename"
	echo "# Maintainer	: $website" >> "$filename"
	echo "# Category        : $type" >> "$filename"
	echo "# Confidence      : 4 " >> "$filename"
	list=$(echo $list | tr -d '"')
	curl $list >> "$filename"
	#sed -i '/#/d' "$filename"
        sed -i '/localhost/d' "$filename" 
	sed -i '/^$/d' "$filename" 
	sed -i 's/127.0.0.1//g' "$filename"
       	sed -i 's/0.0.0.0//g' "$filename"
	sed -i '/<*>/d' "$filename"

done < csv.txt
