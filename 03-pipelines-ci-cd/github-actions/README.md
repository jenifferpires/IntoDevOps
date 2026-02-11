# ⚙️ GitHub Actions — Automação de Pipelines CI.  

Este diretório concentra a **implementação prática de pipelines utilizando GitHub Actions**, a ferramenta de CI/CD nativa do GitHub.

Aqui, o objetivo não é apenas executar workflows, mas **entender como pipelines funcionam, evoluem e falham**.

---

## 🎯 Objetivo:  

Ao trabalhar este diretório, você aprenderá a:

* Criar workflows acionados por eventos do GitHub
* Entender a estrutura de um pipeline (jobs, steps, runners)
* Integrar scripts Bash aos pipelines
* Gerar e publicar artefatos
* Ler logs e diagnosticar falhas

---

## 🧠 Conceitos Aplicados:  

* Pipelines como código
* Eventos de gatilho (`push`, `pull_request`)
* Jobs e steps
* Runners (`ubuntu-latest`)
* Artefatos de pipeline

---

## 📁 Estrutura:  

```text
github-actions/
│
├── README.md
└── workflows/
    ├── 01-ci-basico.yml
    ├── 02-ci-com-shell-script.yml
    └── 03-ci-com-artefatos.yml
```

Cada workflow representa **um nível de maturidade** em CI/CD.

---

## 🔄 Evolução dos Workflows:  

### 1️⃣ CI Básico:  

* Gatilho por `push`
* Execução simples de comandos
* Validação do ambiente

### 2️⃣ CI com Shell Script:  

* Reutilização de scripts Bash
* Separação entre lógica e pipeline
* Simulação de automações reais

### 3️⃣ CI com Artefatos:  

* Geração de arquivos de saída
* Persistência de evidências
* Base para observabilidade e auditoria

---

## 🔗 Conexão com o Repositório:  

Os workflows deste diretório utilizam:

* Scripts do módulo **01-terminal-bash**
* Conceitos de versionamento do **módulo 02-git-versionamento**

Isso reforça a ideia de **pipeline como extensão natural do código**.

---

## 🚧 Status:  

🔄 Em construção. 

Novos workflows serão adicionados conforme a progressão do curso, incluindo:

* Condições por branch
* Variáveis de ambiente
* Pipelines multiambiente
* Gates de aprovação

---

> Pipelines não são apenas automação — são **contratos de qualidade** entre código e produção.
