#!/bin/bash

#adaway
curl https://adaway.org/hosts.txt > adaway.dns
#removes 127.0.0.1
sed -i 's/127.0.0.1//g' adaway.dns
#removes comments 
sed -i '/#/d' adaway.dns
#removes blank lines
sed -i '/^$/d' adaway.dns

#adguardDNs
curl https://v.firebog.net/hosts/AdguardDNS.txt > AdguardDNS.dns

#Admiral
curl https://v.firebog.net/hosts/Admiral.txt > Admiral.dns

#Anudeep
curl https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt > Anudeep.dns
sed -i '/#/d' Anudeep.dns
sed -i 's/0.0.0.0//g'

#disconnect.me
curl https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt > disconnect.dns
sed -i '/#/d' Anudeep.dns

#Easylist
curl https://v.firebog.net/hosts/Easylist.txt > Easylist.dns
