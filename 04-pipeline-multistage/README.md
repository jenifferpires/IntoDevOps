# 🧩 Módulo 04 — Pipeline Multistage (dev / qa / prod).  

Este módulo aprofunda o uso de **pipelines CI/CD**, introduzindo o conceito de **pipelines multistage**, onde o mesmo fluxo de automação percorre **diferentes ambientes** de forma controlada, rastreável e segura.

Aqui, deixamos de apenas executar pipelines e passamos a **pensar como times DevOps em produção**.

---

## 🎯 Objetivos do Módulo:  

Ao concluir este módulo, você será capaz de:

* Entender o conceito de **ambientes (dev, qa, prod)**
* Criar pipelines com **múltiplos estágios**
* Controlar promoções entre ambientes
* Utilizar condições e dependências entre jobs
* Simular práticas reais de entrega contínua

---

## 🧠 Conceitos-Chave: 

Neste módulo, serão trabalhados:

* Pipeline multistage
* Ambientes (dev / qa / prod)
* Promoção de artefatos
* Gates de aprovação
* Dependência entre jobs
* Separação entre validação e entrega

#### 📁 Os conceitos serão documentados em:

```text
04-pipeline-multistage/conceitos/
```

---

## ⚙️ Prática — GitHub Actions:  

A implementação prática utilizará **GitHub Actions**, simulando um fluxo profissional:

1. **Stage Dev**

   * Build
   * Validações iniciais

2. **Stage QA**

   * Testes adicionais
   * Verificações condicionais

3. **Stage Prod**

   * Execução controlada
   * Promoção apenas após sucesso dos estágios anteriores

#### 📁 Estrutura planejada:

```text
04-pipeline-multistage/
│
├── README.md
├── conceitos/
│   ├── 01-o-que-e-pipeline-multistage.md
│   ├── 02-ambientes-dev-qa-prod.md
│   ├── 03-promocao-de-artefatos.md
│   └── 04-gates-e-aprovacoes.md
│
└── workflows/
    ├── 01-multistage-dev.yml
    ├── 02-multistage-dev-qa.yml
    └── 03-multistage-dev-qa-prod.yml
```

---

## 🔁 Conexão com Módulos Anteriores:  

* **Módulo 01 — Terminal e Bash**: automações locais
* **Módulo 02 — Git e Versionamento**: versionamento como gatilho
* **Módulo 03 — CI/CD**: pipelines automatizados
* **Módulo 04 — Multistage**: entrega controlada entre ambientes

Este módulo representa a **transição do CI para o CD realista**.

---

## 🚧 Status do Módulo:  

🔄 Em construção.

Este módulo será desenvolvido de forma incremental, seguindo o mesmo padrão:

> estrutura → conceito → prática → commit

---

✍️ **Autora:** Jeniffer Pires
