#!/bin/bash

url="https://discord.com/api/download?platform=linux&format=deb"
name="Discord"
tmpname="discord.deb"
clear;

echo Killing all processes with name $name.;

#killing all processes with the name Discord

for KILLPID in `ps ax | grep $name | awk ' { print $1;}'`; do
 kill -9 $KILLPID &> /dev/null
done

echo
echo Pulling $tmpname from $url;

wget -O $tmpname $url


echo
echo Installing $tmpname;


# installing discord with all dependencies

sudo apt-get install ./$tmpname

# removing the temp .deb file

rm $tmpname


echo
echo Finished;
echo You can now launch Discord;



