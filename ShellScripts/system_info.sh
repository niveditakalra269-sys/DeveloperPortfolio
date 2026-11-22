
#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Current Directory: $(pwd)"
echo "Operating System:"
uname -a

echo "===== DISK USAGE ====="
df -h

echo "===== MEMORY INFORMATION ====="
free -h

echo "===== SCRIPT COMPLETED ====="
