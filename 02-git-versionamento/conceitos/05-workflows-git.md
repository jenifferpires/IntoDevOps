# 🔀 05 — Workflows Git.  

Depois de entender commits, branches, merges e conflitos, o próximo passo é aprender **como times organizam o uso do Git**. Esses padrões são chamados de **workflows Git**.

Não existe um único workflow correto — existe o **mais adequado para cada contexto**.

---

## 🤔 O que é um workflow Git?

Um **workflow Git** define:

* como branches são criadas.  
* quando merges acontecem.  
* quais branches disparam deploys.  
* como o time colabora.  

Em DevOps, o workflow influencia diretamente:

* pipelines CI/CD
* velocidade de entrega
* estabilidade
* rollback

---

## 🌊 Git Flow.  

### 📌 Estrutura clássica:  

* `main` → produção
* `develop` → integração
* `feature/*` → novas funcionalidades
* `release/*` → preparação de release
* `hotfix/*` → correções urgentes

### ✅ Vantagens:  

* organização clara
* separação explícita de ambientes
* fácil visualização do fluxo

### ❌ Desvantagens:  

* muitas branches
* mais complexidade
* menos indicado para deploy contínuo

📍 Muito usado em ambientes corporativos tradicionais.

---

## 🚀 Trunk Based Development.  

### 📌 Estrutura:  

* branch principal (`main` ou `trunk`)
* branches curtas (horas ou poucos dias)

### ✅ Vantagens:  

* integração contínua real
* menos conflitos
* pipelines simples
* deploy frequente

### ❌ Desvantagens:  

* exige disciplina
* testes automatizados são obrigatórios

📍 Muito usado em times modernos e cloud-native.

---

## 🌱 Feature Branch Workflow.  

### 📌 Estrutura:  

* branch principal protegida
* cada feature em uma branch
* merge via Pull Request

### ✅ Vantagens:  

* simples
* fácil adoção
* bom equilíbrio entre controle e agilidade

### ❌ Desvantagens:  

* branches longas geram conflitos

📍 Um dos workflows mais comuns no GitHub.

---

## 🧠 Escolhendo o workflow certo.  

A escolha depende de:

* tamanho do time
* maturidade
* criticidade do sistema
* nível de automação

Não existe workflow perfeito — existe **workflow consciente**.

---

## 🔧 Workflows e CI/CD.  

Exemplos práticos:

* push em `feature/*` → testes
* merge em `develop` → deploy homologação
* merge em `main` → deploy produção

O Git é o **gatilho da automação**.

---

## ⚠️ Erros comuns:  

* copiar workflow sem entender.  
* criar branches demais.  
* não alinhar workflow com pipeline.  

---

## ✅ Conclusão:  

Workflows organizam:

* colaboração
* automação
* entrega contínua

Este conhecimento fecha o **Módulo 02 — Git e Versionamento**, preparando o terreno para pipelines CI/CD.
