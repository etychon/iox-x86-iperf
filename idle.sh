#!/bin/bash                                                                
                                                                           
echo "This is a idle script (infinite loop) to keep container running."    
echo "Please replace this script."                                         
                                                                           
cleanup ()                                                                 
{                                                                          
  echo "Bailing out..."
  kill -s SIGTERM $!                                                         
  exit 0                                                                     
}                                                                          
                                                                           
trap cleanup SIGINT SIGTERM                                                
                                                                           
while [ 1 ]                                                                
do                                                           
  echo "Starting iPerf3..."
  /usr/bin/iperf3 -s -p 5002
  echo "re-starting iPerf3 in a minute..."
  sleep 60
done
