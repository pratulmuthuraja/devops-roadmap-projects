#!/bin/bash

# Script to get Server Stats

echo -e "\n~~~ Server Stats ~~~\n"

# Total CPU Usage

echo -n "Total CPU Usage: "
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}'

# Total Memory Usage

echo -e "\n~~~ Total Memory Usage ~~~\n"
top -bn1 | grep "MiB Mem" | awk '{
                                    gsub(/,/,"");
                                    printf "Total:\t%d MiB (100%)\n", $4
                                    printf "Used:\t%d MiB (%.2f%)\n", $8, ($8/$4) * 100
                                    printf "Free:\t%d MiB (%.2f%)\n", $6+$10, (($6+$10)/$4) * 100
                                }'

# Total Disk Usage
echo -e "\n~~ Total Disk Usage ~~~\n"
df -h --total | grep "total" | awk '{
                                      printf "Total:\t%s (100%)\n", $2
                                      printf "Used:\t%s (%.2f%)\n", $3, 100-$5
                                      printf "Free:\t%s (%.2f%)\n", $4, $5
                                    }'

# TODO: Top 5 Processes by CPU Usage
echo -e "\n~~ Top 5 Processes (CPU Usage) ~~~\n"
top -bn1 -o %CPU | sed -n '7,12p'

# TODO: Top 5 Processes by Memory Usage
echo -e "\n~~ Top 5 Processes (Memory Usage) ~~~\n"
top -bn1 -o %MEM | sed -n '7,12p'
