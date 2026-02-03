#!/bin/bash 

# Script para exibir informações do sistema.  
# Evolução: melhoria visual da saída e organização.  

# Cores
VERDE="\e[32m"
AZUL="\e[34m"
AMARELO="\e[33m"
RESET="\e[0m"

echo -e "${AZUL}========================================${RESET}"
echo -e "${VERDE}      INFORMAÇÕES DO SISTEMA${RESET}"
echo -e "${AZUL}========================================${RESET}"

echo -e "${AMARELO}Usuário:${RESET} $(whoami)"
echo -e "${AMARELO}Host:${RESET} $(hostname)"
echo -e "${AMARELO}Data/Hora:${RESET} $(date)"

echo ""
echo -e "${AZUL}--- Uso de CPU (load average) ---${RESET}"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo -e "${AZUL}--- Memória ---${RESET}"
free -h

echo ""
echo -e "${AZUL}--- Disco ---${RESET}"
df -h

echo -e "${AZUL}========================================${RESET}"
