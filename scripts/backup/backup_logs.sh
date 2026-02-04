#!/bin/bash

# Variáveis
DATA=$(date +%Y-%m-%d)
NOME_BACKUP="backup_$DATA.tar.gz"
ORIGEM="../scripts" # Pasta que vamos "salvar"

echo "--- INICIANDO ROTINA DE BACKUP ---"

# Verifica se a pasta de origem existe
if [ -d "$ORIGEM" ]; then
    echo "Pasta encontrada. Compactando arquivos de scripts..."
    # Cria um arquivo compactado (comum em DevOps para economizar espaço)
    tar -czf "$NOME_BACKUP" "$ORIGEM"
    echo "Backup concluído com sucesso: $NOME_BACKUP"
else
    echo "Erro: Pasta de origem não encontrada!"
fi
