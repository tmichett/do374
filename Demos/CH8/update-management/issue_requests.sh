#!/bin/bash
SERVER=servera.lab.example.com
WAIT_TIME_SECS=0.5
LOG_FILE=curl_output.log

rm -f $LOG_FILE

while true; do
  #Print curl response to stdout and also write to log file.
  curl -s $SERVER | tee -a $LOG_FILE

  sleep $WAIT_TIME_SECS
done
