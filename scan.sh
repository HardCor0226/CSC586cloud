#!/bin/bash
sudo cat /var/log/auth.log | grep -i disconnected | awk '{print 1" "$2" "$3" "$11}' > modify.log
while IFS= read -r line; do
        ipAdd=` echo $line |awk '{print $4}'`
                date =`echo $line | awk '{print $1 $2 $3}'`
echo "$ipAdd,$(curl -s https://json.geoiplookup.io/$ipAdd | jq ' .country_name'),$date" &>> /var/webserver_log/unauthorized.log
done < "modify.log"
