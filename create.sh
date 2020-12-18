#!/bin/bash
#get list of lists
#curl -O https://v.firebog.net/hosts/csv.txt

create_file () 
{

	#create file name
	filename="$(echo $1 | tr -cd '[:alnum:]._-').dns"
	website=$(echo $2 | tr -d '"')
	typee=$(echo $3 | tr -d '"')
	list=$(echo $4 | tr -d '"')
	#create header
	echo -e "#\n# $name\n#\n#" > "$filename"
	echo "# Maintainer	: $website" >> "$filename"
	echo "# Category        : $typee" >> "$filename"
	echo "# Confidence      : 4 " >> "$filename"
	curl -# --connect-timeout 30 --max-time 90 $list >> "$filename"
	#sed -i '/#/d' "$filename"
        sed -i '/localhost/d' "$filename" 
	sed -i '/^$/d' "$filename" 
	sed -i 's/127.0.0.1//g' "$filename"
       	sed -i 's/0.0.0.0//g' "$filename"
	sed -i '/<*>/d' "$filename"
}

IFS=","
while read -r typee tick website name list
do

create_file $name $website $typee $list

done < csv.txt


