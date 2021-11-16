#! /bin/bash
if type -t wevtutil &> /dev/null
then
    OS=MSWin
elif type -t scutil &> /dev/null
then
   OS=macOS
else
    OS=Linux
fi
echo "Sistema operativo" $OS 

#!/bin/bash 
function is_alive_ping() { 
  ping -c 1 $1 > /dev/null 2>&1 
  [ $? -eq 0 ] && echo "Node with IP: $i is up."
     host=$1
      for ((counter=10; counter<=500; counter++))
      do
        (echo >/dev/tcp/$host/$counter) > /dev/null 2>&1 && echo "$counter open in IP $i"
      done
} 
for i in 10.0.2.{1..255} 
do 
  is_alive_ping $i & disown 
done
