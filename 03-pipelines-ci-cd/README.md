# 🚦 Módulo 03 — Pipelines CI/CD.  

Este módulo introduz **pipelines de Integração Contínua (CI) e Entrega Contínua (CD)**, conectando o versionamento com Git à automação de build, validações e geração de artefatos.

O foco aqui é **entender o funcionamento dos pipelines**, sua lógica, seus gatilhos e sua evolução progressiva — não apenas escrever arquivos YAML.

---

## 🎯 Objetivos do Módulo:  

Ao concluir este módulo, você será capaz de:

- Compreender o papel do CI/CD na cultura DevOps
- Relacionar commits e branches com execuções automáticas
- Criar pipelines funcionais e rastreáveis
- Diagnosticar falhas em pipelines
- Utilizar GitHub Actions de forma prática e consciente

---

## 🧠 Conceitos Trabalhados:  

Os conceitos foram introduzidos de forma incremental:

- Integração Contínua (CI)
- Entrega Contínua (CD)
- Pipeline como código
- Eventos e gatilhos (push, branch)
- Jobs e steps
- Variáveis de ambiente
- Execução paralela (matrix)
- Falhas controladas em pipeline

📁 Consulte os arquivos em:

```text
03-pipelines-ci-cd/conceitos/
```

---

## ⚙️ GitHub Actions — Prática Aplicada:  

A prática deste módulo foi construída utilizando **GitHub Actions**, evoluindo passo a passo:

📁 Estrutura:

```text
03-pipelines-ci-cd/github-actions/
│
├── README.md
├── conceitos/
│   └── 01-o-que-e-github-actions.md
│
└── workflows/
    ├── 01-ci-basico.yml
    ├── 02-ci-com-shell-script.yml
    ├── 03-ci-gerando-artefato.yml
    ├── 04-ci-com-variaveis.yml
    ├── 05-ci-por-branch.yml
    ├── 06-ci-com-falha.yml
    └── 07-ci-matrix.yml
```

---

## 🔬 Workflows Implementados:  

| Workflow | Descrição |
|--------|-----------|
| CI Básico | Primeira automação acionada por push |
| CI com Shell Script | Execução de comandos Bash no pipeline |
| CI com Artefato | Geração e persistência de artefatos |
| CI com Variáveis | Uso de variáveis de ambiente |
| CI por Branch | Execução condicionada por branch |
| CI com Falha | Simulação e leitura de erros |
| CI com Matrix | Execução paralela por ambiente |

---

## 🔁 Conexão com Módulos Anteriores:  

- **Módulo 01 — Terminal e Bash**: scripts locais e automação
- **Módulo 02 — Git e Versionamento**: commits e branches como gatilho
- **Módulo 03 — CI/CD**: automação rastreável e reprodutível

Pipelines são a ponte entre **código** e **entrega confiável**.

---

## 🚧 Status do Módulo:  

✅ **Concluído — base sólida de CI/CD**

Este módulo estabelece os fundamentos necessários para avançar para:

➡ **Módulo 04 — Pipeline Multistage (dev / qa / prod)**
