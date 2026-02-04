# 04 — Variáveis e Ambiente no Bash.  

## 🎯 Objetivo deste conteúdo:  

Este material apresenta o conceito de **variáveis no Bash** e de **variáveis de ambiente**, fundamentais para escrever scripts reutilizáveis, portáveis e compatíveis com automações DevOps.

Sem variáveis:

* scripts ficam engessados.  
* caminhos são hardcoded.  
* automações quebram facilmente.  

---

## 🧠 O que é uma variável?

Uma variável é um **espaço na memória** usado para armazenar um valor que pode ser reutilizado.

No Bash, variáveis:

* não têm tipo explícito
* são criadas dinamicamente
* são sensíveis a maiúsculas e minúsculas

Exemplo:

```bash
NOME="Jeniffer"
echo $NOME
```

---

## ⚠️ Regras importantes no Bash:  

* Não pode haver espaço antes ou depois do `=`
* Para acessar o valor, use `$`

❌ Errado:

```bash
NOME = Jeniffer
```

✅ Correto:

```bash
NOME=Jeniffer
echo $NOME
```

---

## 📄 Variáveis locais em scripts:  

Exemplo simples:

```bash
#!/bin/bash
LOG_FILE="/tmp/system-info.log"
DATA=$(date "+%Y-%m-%d %H:%M:%S")

echo "Execução em $DATA" >> $LOG_FILE
```

📌 Essas variáveis só existem **durante a execução do script**.

---

## 🔁 Substituição de comandos:  

O Bash permite armazenar o resultado de um comando em uma variável:

```bash
USUARIO=$(whoami)
HOST=$(hostname)
```

Isso é amplamente usado em scripts de monitoramento e automação.

---

## 🌍 Variáveis de ambiente:  

Variáveis de ambiente:

* existem além do script atual
* podem ser compartilhadas entre processos
* são muito usadas por sistemas, pipelines e containers

Para listar:

```bash
env
```

Ou:

```bash
printenv
```

---

## 🔑 Variáveis de ambiente importantes.  

Alguns exemplos comuns:

* `HOME` — diretório do usuário
* `PATH` — onde o sistema procura executáveis
* `USER` — usuário atual
* `SHELL` — shell em uso

Exemplo:

```bash
echo $HOME
echo $PATH
```

---

## 📤 Exportando variáveis:  

Para tornar uma variável disponível para outros processos:

```bash
export AMBIENTE=dev
```

Agora ela pode ser usada por:

* outros scripts
* cron jobs
* pipelines

---

## ⚠️ Variáveis e cron (atenção):  

Cron **não carrega o mesmo ambiente** do terminal interativo.

Por isso:

* variáveis podem não existir
* `PATH` pode ser diferente
* scripts falham sem erro claro

📌 Boas práticas:

* usar caminhos absolutos
* definir variáveis no próprio script

---

## 🧠 Relação com DevOps.  

Em DevOps, variáveis são usadas para:

* definir ambientes (dev, qa, prod)
* configurar pipelines
* evitar duplicação de código
* tornar automações portáveis

Sem domínio de variáveis, não há automação confiável.

---

## 📌 Conclusão:  

Variáveis permitem:

* flexibilidade
* reutilização
* clareza

São um dos pilares de scripts profissionais.

➡️ **Próximo passo:** Automação com `cron`

Agora que você entende scripts, permissões e ambiente, estamos prontos para automatizar.
