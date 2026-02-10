# 🤖 01 — O que é GitHub Actions.  

Agora que entendemos **CI/CD**, **pipelines como código**, **eventos** e **estrutura**, é hora de aplicar esses conceitos em uma ferramenta real. Neste módulo, utilizamos o **GitHub Actions**, solução nativa de CI/CD do GitHub.

---

## 🌐 O que é o GitHub Actions?  

**GitHub Actions** é a plataforma de automação do GitHub que permite:

* criar pipelines de CI/CD
* automatizar tarefas
* reagir a eventos do repositório

Tudo isso usando arquivos **YAML versionados no próprio repositório**.

👉 É pipeline como código na prática.

---

## 🔗 Integração nativa com GitHub:  

GitHub Actions é profundamente integrado ao GitHub:

* push
* pull request
* merge
* issues
* releases

Isso elimina integrações externas iniciais e reduz complexidade.

---

## 🧠 Modelo mental do GitHub Actions:  

No GitHub Actions:

* **Workflow** → pipeline completa
* **Jobs** → unidades de execução
* **Steps** → comandos ou ações
* **Actions** → blocos reutilizáveis

Esse modelo segue exatamente os conceitos já estudados.

---

## 📁 Onde os workflows ficam?  

Os workflows são definidos em:

```text
.github/workflows/
```

Cada arquivo YAML representa uma pipeline.

📌 Versionado, auditável e rastreável.

---

## ⚙️ Runners no GitHub Actions:  

Os workflows rodam em **runners**, que podem ser:

* hospedados pelo GitHub
* auto-hospedados

Exemplos de ambientes:

* ubuntu-latest
* windows-latest
* macos-latest

O runner define o ambiente de execução.

---

## ⚠️ Erros comuns de iniciantes:  

* confundir workflow com action
* não versionar corretamente
* pipelines grandes demais
* não entender o ambiente do runner

Esses erros dificultam debug e manutenção.

---

## 🔧 GitHub Actions no contexto DevOps:  

GitHub Actions permite:

* automação rápida
* feedback imediato
* padronização de pipelines

👉 Ferramenta simples, mas poderosa quando bem estruturada.

---

## ✅ Conclusão:  

GitHub Actions é:

* CI/CD acessível
* totalmente integrado ao GitHub
* ideal para aprender e aplicar DevOps

No próximo conteúdo, criaremos o **primeiro workflow YAML**, passo a passo.
