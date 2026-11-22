#!/bin/bash
# Author: Nivedita Kalra
# Purpose: Display system information report

echo "=========================================="
echo "         SYSTEM INFORMATION REPORT"
echo "=========================================="
echo "Name: Nivedita Kalra | Roll No: 2601730422 | Date: $(date)"
echo "------------------------------------------"
echo "CPU Model & Cores:"
lscpu | grep -E "Model name|CPU\(s\):" | head -2
echo "------------------------------------------"
echo "Memory Usage (Total & Used):"
free -h | awk '/^Mem:/ {print "Total: " $2 " | Used: " $3}'
echo "------------------------------------------"
echo "Top 3 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo "------------------------------------------"
echo "Report generated successfully."
