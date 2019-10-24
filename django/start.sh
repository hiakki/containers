#!/bin/sh

sleep 5

/run_django.sh -D

status=$?
if [ $status -ne 0 ]; then
  echo "Django Failed: $status" > status1.txt
  exit $status
  else echo "Starting Django: OK" > status2.txt
fi

sleep 2

while /bin/true; do

  ps aux | grep 'django: master process' | grep -q -v grep
  DJANGO_STATUS=$?
  echo "Checking DJANGO, Status Code: $DJANGO_STATUS" > status3.txt
  sleep 2
   if [ $DJANGO_STATUS -ne 0 ];
     then
       echo "$(date +%F_%T) FATAL: DJANGO Raised a Status Code of $DJANGO_STATUS and exited" > status4.txt
       exit -1

   else
     sleep 2
        echo "$(date +%F_%T) - HealtCheck: DJANGO: OK" > status5.txt
  fi
  sleep 2
done

