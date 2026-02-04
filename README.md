# 🚀 Into DevOps – Jornada de Aprendizado.  

Este repositório documenta minha **jornada prática de aprendizado em DevOps**, construída de forma incremental e organizada, acompanhando a evolução dos estudos ao longo do curso de formação DevOps.

> ⚠️ **Status do projeto:** em andamento
>
> Este repositório está sendo continuamente atualizado conforme o avanço no curso. Novos módulos, práticas e automações serão adicionados progressivamente até a conclusão da formação.

---

## 🧪 Conteúdo prático:  

### 📄 `system-info.sh`

Script de monitoramento básico do sistema operacional, preparado para **execução manual e automatizada**.

O script coleta:

* Hostname
* Uptime do sistema
* Carga média da CPU
* Uso de memória
* Uso de disco

Toda a saída é registrada em arquivo de log com **timestamp**, permitindo rastreabilidade e análise histórica.

```bash
/tmp/system-info.log
```

### ⏰ Automação com cron:  

O script foi integrado ao **cron**, agendador nativo do Linux, simulando uma rotina real de servidor.

Exemplo de agendamento:

```bash
*/5 * * * * /home/jenyf/scripts/system-info.sh
```

Esse agendamento executa o script a cada 5 minutos, gravando informações de estado do sistema automaticamente.

### 🧠 Aprendizados-chave do módulo:  

* Diferença entre filesystem Linux e Windows (WSL)
* Importância de caminhos absolutos em automações
* Permissões de execução (`chmod +x`)
* Validação manual antes da automação
* Logs como parte essencial da automação


---

✍️ **Autora:** **Jeniffer Pires**     
🌐 [GitHub](https://github.com/jenifferpires/IntoDevOps/)   
💼 [LinkedIn](https://www.linkedin.com/in/jeniffer-pires-a5a8678a/)   
