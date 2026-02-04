# 02 — Estrutura de Diretórios no Linux.  

## 🎯 Objetivo deste conteúdo:  

Entender a **estrutura de diretórios do Linux** é essencial para trabalhar com terminal, scripts e automações.

Grande parte dos erros em ambientes DevOps não acontece por código errado, mas por **caminhos incorretos**, permissões mal aplicadas ou confusão entre ambientes.

---

## 📁 O que é o sistema de arquivos?

O Linux organiza tudo em forma de **árvore de diretórios**.

Diferente do Windows (C:, D:, etc.), no Linux **tudo começa em um único ponto**, chamado de diretório raiz:

```text
/
```

A partir dele, todos os outros diretórios são organizados.

---

## 🌳 Principais diretórios do Linux:  

### `/`

* Diretório raiz.  
* Origem de toda a árvore do sistema.  

---

### `/home`

* Diretórios dos usuários.  
* Onde ficam arquivos pessoais, scripts e projetos.  

Exemplo:

```text
/home/jenyf
```

📌 **Regra prática DevOps:** scripts de usuário e estudos devem viver aqui.

---

### `/etc`

* Arquivos de configuração do sistema.  
* Configurações de serviços (cron, ssh, network, etc.).  

⚠️ Normalmente requer permissões de administrador.

---

### `/var`

* Arquivos variáveis do sistema.  
* Logs, cache, filas.  

Exemplo:

```text
/var/log
```

📌 Logs de aplicações e serviços normalmente vivem aqui.

---

### `/tmp`

* Arquivos temporários.  
* Conteúdo pode ser apagado automaticamente pelo sistema.  

Usado frequentemente para:

* testes
* arquivos intermediários
* scripts de monitoramento simples

---

## 🪟 Linux + Windows (WSL).  

Quando usamos WSL:

* O Linux tem seu próprio filesystem.  
* O Windows é montado dentro dele.  

### Onde fica o Windows no WSL?

```text
/mnt/c
```

Exemplo:

```text
/mnt/c/Users/jenyf
```

⚠️ Misturar caminhos Linux (`/home`) com Windows (`/mnt/c`) sem critério é uma das principais fontes de erro em automação.

---

## 📍 Caminhos absolutos vs relativos.  

### Caminho absoluto:  

* Começa na raiz `/`
* Funciona de qualquer lugar

Exemplo:

```bash
/home/jenyf/scripts/system-info.sh
```

### Caminho relativo:  

* Depende do diretório atual

Exemplo:

```bash
./system-info.sh
```

📌 **Em automações (cron, pipelines, containers): sempre use caminhos absolutos.**

---

## 🔎 Comandos básicos de navegação:  

### `pwd`

Mostra onde você está:

```bash
pwd
```

---

### `ls`

Lista arquivos e diretórios:

```bash
ls
ls -l
ls -a
```

---

### `cd`

Muda de diretório:

```bash
cd /home/jenyf
cd ..
cd ~
```

---

## 🧠 Relação com scripts e automação.  

Scripts Bash e jobs automatizados:

* não sabem onde você "acha" que está.  
* não têm contexto visual.  
* executam exatamente o caminho informado.  

Por isso:

* caminhos errados quebram automações.  
* scripts funcionam manualmente, mas falham no cron.  

Este conceito será essencial no próximo conteúdo.

---

## 📌 Conclusão:  

Dominar a estrutura de diretórios Linux permite:

* escrever scripts confiáveis.  
* evitar erros de ambiente.  
* entender problemas reais de produção.  

➡️ **Próximo conteúdo:** `03-permissoes-e-execucao.md`

Aqui veremos por que um script existe, mas não executa.
