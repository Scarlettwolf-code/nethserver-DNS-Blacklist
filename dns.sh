#!/bin/bash

#adaway
curl https://adaway.org/hosts.txt > adaway.dns
#removes 127.0.0.1
sed -i 's/127.0.0.1//g' adaway.dns
#removes comments 
sed -i '/#/d' adaway.dns
#removes blank lines
sed -i '/^$/d' adaway.dns
sed -i '/localhost/d' adaway.dns

#adguardDNs
curl https://v.firebog.net/hosts/AdguardDNS.txt > AdguardDNS.dns

#Admiral
curl https://v.firebog.net/hosts/Admiral.txt > Admiral.dns

#Anudeep
curl https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt > Anudeep.dns
sed -i '/#/d' Anudeep.dns
sed -i 's/0.0.0.0//g' Anudeep.dns

#disconnect.me
curl https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt > disconnect.dns
sed -i '/#/d' Anudeep.dns

#Easylist
#curl https://v.firebog.net/hosts/Easylist.txt > Easylist.dns

#yoyo
#curl https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext > yoyo.dns

#fademind
curl https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts > fademind.dns

#bigdargon
curl https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts > bigdragon.dns
sed -i 's/0.0.0.0//g' bigdragon.dns
sed -i '/#/d' bigdragon.dns

#ad-wars
curl https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts > ad-wars.dns
sed -i 's/127.0.0.1//g' ad-wars.dns
sed -i '/#/d' ad-wars.dns
sed -i '/localhost/d' ad-wars.dns


