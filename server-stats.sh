#!/bin/bash

# Script to get Server Stats

echo -e "\n~~~ Server Stats ~~~\n"

# Total CPU Usage

echo -n "Total CPU Usage: "
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}'

# TODO: Total Memory Usage
echo -e "\n~~~ Total Memory Usage ~~~\n"
top -bn1 | grep "MiB Mem" | awk '{gsub(/,/,""); print $4" "$5"\n"$6+$10" "$7"\n"$8" "$9}'

# TODO: Total Disk Usage
echo -e "\n~~ Total Disk Usage ~~~\n"

# TODO: Top 5 Processes by CPU Usage
echo -e "\n~~ Top 5 Processes (CPU Usage) ~~~\n"

# TODO: Top 5 Processes by Memory Usage
echo -e "\n~~ Top 5 Processes (Memory Usage) ~~~\n"
