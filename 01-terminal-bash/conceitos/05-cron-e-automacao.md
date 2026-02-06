# 05 — Cron e Automação no Linux.  

## 🎯 Objetivo deste conteúdo:  

Este material introduz o **cron**, o agendador de tarefas do Linux, conectando os conceitos de terminal, scripts, permissões e variáveis à **automação real**, que é um dos pilares da cultura DevOps.

Ao final deste conteúdo, você entenderá:

* o que é cron e por que ele existe
* como funciona o agendamento de tarefas
* por que scripts funcionam manualmente, mas falham no cron
* como pensar automação com mentalidade DevOps

---

## ⏰ O que é o cron?

O **cron** é um serviço do Linux responsável por executar comandos ou scripts **automaticamente em horários definidos**.

Ele é amplamente usado para:

* backups
* monitoramento
* limpeza de arquivos
* execuções periódicas
* jobs de manutenção

Em servidores Linux, o cron substitui completamente qualquer execução manual repetitiva.

---

## 🧠 Cron vs execução manual.  

Quando você executa um script no terminal:

* existe um usuário logado
* há um ambiente carregado (`PATH`, variáveis, shell)
* há contexto visual

Quando o cron executa:

* não há usuário interativo
* o ambiente é mínimo
* tudo precisa estar explícito

📌 **Por isso scripts precisam ser bem escritos para automação.**

---

## 🧾 O arquivo `crontab`

Cada usuário possui sua própria tabela de agendamentos, chamada de **crontab**.

Para editar:

```bash
crontab -e
```

Para listar:

```bash
crontab -l
```

Para remover todos os agendamentos:

```bash
crontab -r
```

---

## 🧩 Estrutura de um agendamento.  

Um agendamento cron possui **5 campos de tempo + o comando**:

```text
* * * * * comando
│ │ │ │ │
│ │ │ │ └── dia da semana (0–7)
│ │ │ └──── mês (1–12)
│ │ └────── dia do mês (1–31)
│ └──────── hora (0–23)
└────────── minuto (0–59)
```

Exemplo:

```bash
*/5 * * * * /home/jenyf/scripts/system-info.sh
```

➡ Executa o script a cada 5 minutos.

---

## 📍 Caminhos absolutos (obrigatório).  

No cron:

* **nunca use caminhos relativos**
* sempre informe o caminho completo do script

❌ Errado:

```bash
./system-info.sh
```

✅ Correto:

```bash
/home/jenyf/scripts/system-info.sh
```

---

## 🔐 Permissões e cron.  

Para que um script funcione no cron:

* ele precisa existir
* precisa ter permissão de execução
* precisa ter shebang válido

Checklist:

```bash
ls -l system-info.sh
chmod +x system-info.sh
```

---

## 🌍 Ambiente reduzido do cron.  

Cron **não carrega** o mesmo ambiente do terminal.

Problemas comuns:

* comandos não encontrados
* variáveis inexistentes
* `PATH` diferente

Boas práticas:

* usar caminhos absolutos para comandos
* definir variáveis dentro do script

---

## 📝 Logs e automação:  

Jobs automatizados precisam gerar logs.

Sem logs:

* não há rastreabilidade
* erros passam despercebidos

Exemplo no script:

```bash
echo "Execução em $(date)" >> /tmp/system-info.log
```

---

## 🧠 Mentalidade DevOps:  

Automação não é apenas "rodar sozinho".

Em DevOps, automação significa:

* previsibilidade
* repetibilidade
* observabilidade
* segurança

Cron é muitas vezes o **primeiro contato real com automação de produção**.

---

## 📌 Conclusão:  

Com cron, scripts deixam de ser exercícios e passam a ser **componentes ativos do sistema**.

Você agora tem a base completa para:

* automatizar tarefas.  
* entender falhas de jobs.  
* avançar para pipelines CI/CD.  

➡️ **Próximo passo:** aplicar cron no `system-info.sh` e documentar a automação.
