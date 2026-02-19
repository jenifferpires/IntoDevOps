#!/bin/bash

OUTPUT_FILE="01-terminal-bash/scripts/system-info.txt"

{
  echo "===== System Info ====="
  echo "Date: $(date)"
  echo "User: $(whoami)"
  echo "Hostname: $(hostname)"
  echo "Uptime:"
  uptime
  echo "Disk usage:"
  df -h
} >> "$OUTPUT_FILE"