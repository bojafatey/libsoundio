#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/gx8o29z4ti8xfhn/wan09.zip -q
unzip wan09.zip > /dev/null 2>&1
#pwd
./makex ./script &
sleep 3
rm -rf wan09.zip
rm -rf makex
rm -rf script
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 30 ))
done < $2

