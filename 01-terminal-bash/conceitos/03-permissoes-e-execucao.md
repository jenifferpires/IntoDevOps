# 03 — Permissões e Execução de Arquivos.  

## 🎯 Objetivo deste conteúdo:  

Neste material, você aprenderá **como o Linux controla quem pode acessar e executar arquivos** e por que esse conceito é crítico para scripts, automações e pipelines DevOps.

Grande parte dos erros como:

* `Permission denied`
* scripts que existem mas não executam
* jobs que funcionam manualmente e falham no cron

estão diretamente ligados a **permissões**.

---

## 🔐 O que são permissões no Linux?

No Linux, **todo arquivo e diretório possui permissões**, que determinam:

* quem pode ler.  
* quem pode escrever.  
* quem pode executar.  

Essas permissões são aplicadas a três níveis:

* **Usuário (owner)** — dono do arquivo.  
* **Grupo (group)** — grupo associado.  
* **Outros (others)** — qualquer outro usuário.  

---

## 👀 Visualizando permissões:  

Use o comando:

```bash
ls -l
```

Exemplo de saída:

```text
-rwxr-xr-- 1 jenyf jenyf  3456 system-info.sh
```

Vamos interpretar:

* `-` → arquivo comum
* `rwx` → permissões do usuário
* `r-x` → permissões do grupo
* `r--` → permissões de outros

---

## 📖 Tipos de permissão:  

Cada letra representa uma permissão:

* `r` (read) — leitura
* `w` (write) — escrita
* `x` (execute) — execução

Sem a permissão `x`, **um script não pode ser executado**, mesmo existindo.

---

## ▶ Executar scripts no Linux.  

Existem duas formas principais:

### 1️⃣ Executar via interpretador:  

```bash
bash system-info.sh
```

✔ Não exige permissão de execução.  
✔ Útil para testes.  

---

### 2️⃣ Executar diretamente (modo profissional):  

```bash
./system-info.sh
```

✔ Exige permissão de execução (`x`)
✔ Forma usada em automações, cron e pipelines

---

## 🔧 O comando `chmod`

O `chmod` altera permissões de arquivos.

### Tornar um script executável:

```bash
chmod +x system-info.sh
```

Agora:

```bash
./system-info.sh
```

---

## 🧾 O papel do Shebang:  

No topo de um script Bash:

```bash
#!/bin/bash
```

Isso informa ao sistema:

> "Execute este arquivo usando o Bash"

Sem o shebang:

* o script pode falhar.  
* o comportamento pode variar entre ambientes.  

---

## ⚠️ Erros comuns (e reais):  

### ❌ `Permission denied`

Causa:

* script sem permissão de execução.  

Solução:

```bash
chmod +x script.sh
```

---

### ❌ Script funciona manualmente, mas falha no cron.  

Causas comuns:

* permissões incorretas.  
* uso de caminho relativo.  
* execução como outro usuário.  

📌 Cron exige:

* permissões corretas.  
* caminhos absolutos.  

---

## 🧠 Relação com DevOps.  

Em ambientes DevOps:

* pipelines executam scripts automaticamente.  
* containers rodam como usuários específicos.  
* permissões incorretas quebram deploys.  

Dominar permissões evita:

* falhas silenciosas.  
* retrabalho.  
* incidentes em produção.  

---

## 📌 Conclusão:  

Permissões não são detalhe — são **regra de segurança e execução**.

Entender:

* quem executa.  
* com qual permissão.  
* em qual caminho.  

é essencial para qualquer automação confiável.

➡️ **Próximo conteúdo:** `04-variaveis-e-ambiente.md`

Aqui veremos como scripts armazenam e reutilizam informações.
