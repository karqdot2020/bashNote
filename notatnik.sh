#!/bin/bash

while [ 1 ]
do

date=`date +%F`
echo "Hello $USER"
echo "type your note"
read a
data=`echo -e 'Note of the day:' $date 'Add by user:' $USER'n\'$a >> note.txt`
$data
read -p 'Do you want to close script y/n :' p

case "$p" in 
"n") continue;;
"y") echo 'Exit'; exit;;
*) echo 'Exit'; exit;;
esac
done
