#!/bin/bash

LOG_FILE="/tmp/system-info.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "===============================" >> $LOG_FILE
echo "📊 System Info - $DATE" >> $LOG_FILE
echo "Hostname: $(hostname)" >> $LOG_FILE
echo "Usuário: $(whoami)" >> $LOG_FILE
echo "-------------------------------" >> $LOG_FILE

echo "⏱️ Uptime:" >> $LOG_FILE
uptime -p >> $LOG_FILE

echo "-------------------------------" >> $LOG_FILE
echo "🧠 Uso de Memória:" >> $LOG_FILE
free -h >> $LOG_FILE

echo "-------------------------------" >> $LOG_FILE
echo "💽 Uso de Disco:" >> $LOG_FILE
df -h / >> $LOG_FILE

echo "===============================" >> $LOG_FILE
echo "" >> $LOG_FILE
