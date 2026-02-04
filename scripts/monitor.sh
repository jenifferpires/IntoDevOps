#!/bin/bash

# Definindo cores
VERDE='\033[0;32m'
AZUL='\033[0;34m'
SEM_COR='\033[0m'

echo -e "${AZUL}--- RELATÓRIO DE SISTEMA ---${SEM_COR}"
date
echo -e "Usuário atual: ${VERDE}$USER${SEM_COR}"

echo -e "${AZUL}--- ESPAÇO EM DISCO ---${SEM_COR}"
df -h | head -n 2

echo -e "${AZUL}--- USO DE MEMÓRIA (MB) ---${SEM_COR}"
free -m
