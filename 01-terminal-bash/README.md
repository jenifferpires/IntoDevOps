# Módulo 01 – Introdução ao Terminal e Bash.  

Este módulo marca o início prático da jornada DevOps, focando no **uso do terminal e na automação básica com Bash**.

Antes de trabalhar com pipelines, containers ou cloud, é essencial dominar a linha de comando, pois ela é a base de praticamente todas as automações em ambientes Linux.

---

## 🎯 Objetivos do Módulo:  

- Compreender o que é o terminal e como ele funciona.  
- Aprender comandos básicos de navegação e manipulação de arquivos.  
- Introdução ao Bash Script.  
- Criar scripts simples e executáveis.  
- Entender permissões de arquivos no Linux.  

---

## 📂 Estrutura do Módulo:  

```text
01-terminal-bash/
├── README.md
└── scripts/
    ├── hello.sh
    └── system-info.sh
```
🧪 Conteúdo Prático: 

`hello.sh`

Primeiro script Bash do projeto.

Objetivos:

- Entender a estrutura básica de um script (`#!/bin/bash`)
- Executar comandos simples
- Trabalhar com permissões de execução

`system-info.sh`

Script simples para exibir informações do sistema.

Objetivos:

- Uso de comandos do sistema operacional.  
- Automação básica.  
- Introdução à coleta de dados do ambiente.  

🧠 Por que isso é importante em DevOps?

- A automação começa no shell. 
- Scripts Bash são amplamente usados em pipelines CI/CD.  
- Containers e servidores Linux dependem fortemente de scripts.  
- Dominar o terminal reduz dependência de ferramentas gráficas.  

---

## 📜 Scripts Criados:  

### 🔹 hello.sh

Script introdutório utilizado para apresentar a estrutura básica de um script Bash.

**Conceitos aplicados:**
- Shebang (`#!/bin/bash`)
- Comentários no script
- Uso do comando `echo`
- Permissão de execução com `chmod`

Este script serve como primeiro contato com automação via terminal.

---

### 🔹 system-info.sh

Script responsável por exibir informações básicas do sistema.

**Informações exibidas:**
- Usuário em execução
- Nome do host
- Data e hora atual

**Conceitos aplicados:**
- Substituição de comandos (`$( )`)
- Interação com o sistema operacional
- Organização e padronização da saída

Este tipo de script é comum em rotinas de diagnóstico, monitoramento e execução de jobs automatizados.

---

## ✅ Resultado do Módulo:  

Ao final deste módulo, foram consolidados os seguintes aprendizados:

- Navegação e execução de comandos no terminal. 
- Criação e execução de scripts Bash.  
- Compreensão inicial de automação.  
- Base necessária para uso futuro em pipelines CI/CD.  


🚀 Próximos Passos:  

Nos próximos módulos, estes scripts servirão de base para:

- Execução automatizada em pipelines.  
- Conteinerização com Docker.  
- Simulação de jobs em ambientes CI/CD.  