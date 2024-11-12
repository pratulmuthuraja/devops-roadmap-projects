#!/bin/bash

# Tool to analyse nginx log access log files and print some
# output

# TODO: Read log files

if [ -z "$1" ]; then
	echo "Error: Provide a nginx access log file"
	exit 1
fi

LOG_FILE=$1

# TODO: Top 5 IP addresses with the most requests

echo -e "\n~~~ Top 5 IP addresses with the most requests:~~~\n"
cat $LOG_FILE | cut -d ' ' -f 1 | sort | uniq -c | sort -n -k1 -r | head -5 | awk '{print $2 " - " $1 " requests"}'

# TODO: Top 5 most requested paths

echo -e "\n~~~ Top 5 most requested paths:~~~\n"
cat $LOG_FILE | awk '{print $7}' | sort | uniq -c | sort -n -k1 -r | head -5 | awk '{print $2 " - " $1 " requests"}'

# TODO: Top 5 response status codes

echo -e "\n~~~ Top 5 response codes:~~~\n"
cat $LOG_FILE | awk '{print $9}' | sort | uniq -c | sort -n -k1 -r | awk '{
 for (i=1; i<=NF; i=i+2)
   if ($2 ~ /^[0-9]{3}$/)
     print $2" - "$1" requests"
   }' | head -5
