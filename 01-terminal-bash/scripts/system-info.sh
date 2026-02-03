#!/bin/bash

# Script para exibir informações básicas do sistema
# Evolução: adiciona uso de CPU, memória e disco

echo "=== Informações do Sistema ==="
echo "Usuário atual: $(whoami)"
echo "Nome do host: $(hostname)"
echo "Data e hora: $(date)"

echo ""
echo "=== Uso de Recursos ==="

echo "CPU (load average):"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Memória:"
free -h

echo ""
echo "Disco:"
df -h
