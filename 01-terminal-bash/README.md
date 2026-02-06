# 🖥️ Módulo 01 — Terminal, Shell e Automação.  

Este módulo aborda os **fundamentos do uso do terminal Linux e Shell Script**, construindo a base necessária para automação de tarefas — um dos pilares da cultura DevOps.

Ao longo do módulo, os conceitos são apresentados de forma progressiva e imediatamente aplicados na prática, culminando na **automação real de um script via cron**.

---

## 🎯 Objetivos do Módulo:  

- Compreender o papel do terminal no Linux.  
- Entender o que é um shell e como o Bash funciona.  
- Navegar e manipular o sistema de arquivos.  
- Trabalhar com permissões e execução de scripts.  
- Utilizar variáveis e ambiente de execução.  
- Automatizar tarefas com cron (mentalidade DevOps).  

---

## 📚 Conteúdos Abordados:  

Os conceitos estão organizados no diretório `conceitos/`:

- `01-terminal-e-shell.md` — O que é terminal, shell e Bash  
- `02-estrutura-diretorios.md` — Sistema de arquivos Linux  
- `03-permissoes-e-execucao.md` — Permissões e execução de scripts  
- `04-variaveis-e-ambiente.md` — Variáveis e ambiente de execução  
- `05-cron-e-automacao.md` — Automação de tarefas com cron  

---

## 🛠️ Prática Desenvolvida.    

### Scripts:    

Localizados em `scripts/`:

- `hello.sh`  
  Script simples para validação de execução e permissões.

- `system-info.sh`  
  Script de monitoramento básico que coleta:
  - Data e hora
  - Uso de CPU
  - Uso de memória
  - Uso de disco

A saída do script é registrada em log para permitir rastreabilidade.

## 📂 Estrutura do Módulo:  

```text
01-terminal-bash/
├── README.md
├── scripts/
│   ├── hello.sh
│   └── system-info.sh
└── conceitos/
    ├── 01-terminal-e-shell.md
    ├── 02-estrutura-diretorios.md
    ├── 03-permissoes-e-execucao.md
    ├── 04-variaveis-e-ambiente.md  
    └── 5-cron-e-automacao.md  

   ```   
--- 

## ⏱️ Automação com Cron:  

O script `system-info.sh` foi preparado para execução automática via **cron**, simulando um cenário real de servidor.

Características da automação:
- Execução não interativa
- Uso de caminhos absolutos
- Geração de logs
- Validação por múltiplas execuções

Este passo marca a transição do uso manual para **automação contínua**, alinhada à mentalidade DevOps.

---

## 🧠 Conceitos DevOps Aplicados:  

- Automação de tarefas repetitivas.  
- Previsibilidade de execução.  
- Rastreabilidade via logs.  
- Separação entre código e ambiente.  
- Evolução incremental com versionamento.  

---

## ✅ Status do Módulo:  

✔️ **Concluído**

Este módulo estabelece a base necessária para os próximos temas da jornada DevOps, como versionamento com Git, pipelines CI/CD e automações mais avançadas.

---

