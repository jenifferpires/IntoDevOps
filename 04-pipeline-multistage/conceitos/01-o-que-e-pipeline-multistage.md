# 🔄 01 — O que é uma Pipeline Multistage?

Uma **pipeline multistage** é um fluxo de automação dividido em **múltiplos estágios sequenciais**, onde cada estágio representa uma fase do processo de entrega de software.

Diferente de uma pipeline simples (onde tudo ocorre em um único fluxo), a multistage organiza o processo em **etapas claras, controladas e rastreáveis**.

---

## 🎯 Objetivo:  

Compreender:

- Por que dividir pipelines em estágios
- Como funciona a progressão entre ambientes
- Como aplicar isso em ferramentas como GitHub Actions

---

## 🧠 Por que dividir em estágios?

Em ambientes reais, o software não vai direto para produção após um build bem-sucedido.

Ele normalmente percorre ambientes distintos:

- **Dev** → validações iniciais
- **QA** → testes adicionais
- **Prod** → entrega final

Cada ambiente possui objetivos e critérios próprios.

---

## 🏗️ Estrutura Conceitual:  

Uma pipeline multistage geralmente segue a lógica:

```text
Stage 1 → Build / Dev
Stage 2 → Testes / QA
Stage 3 → Produção / Deploy
```
Cada estágio:

- Pode depender do estágio anterior. 

- Pode executar validações específicas.  

- Pode interromper o fluxo em caso de falha.  

## 🔗 Relação com CI/CD.  

No módulo anterior, vimos:

- CI (Continuous Integration) → valida automaticamente o código.    
- CD (Continuous Delivery) → controla a entrega entre ambientes.  

A pipeline multistage é o mecanismo que permite aplicar CD de forma estruturada.

## ⚙️ Características Técnicas.  

Pipelines multistage permitem:

- Dependência entre jobs (`needs`). 
- Execução condicional.  
- Separação de responsabilidades.  
- Promoção controlada de artefatos.  
- Possibilidade de aprovação manual antes da produção.  

## 📌 Exemplo Simplificado (GitHub Actions). 

```yaml
jobs:
  dev:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Executando Stage DEV"

  qa:
    needs: dev
    runs-on: ubuntu-latest
    steps:
      - run: echo "Executando Stage QA"

  prod:
    needs: qa
    runs-on: ubuntu-latest
    steps:
      - run: echo "Executando Stage PROD"
```

Observe o uso de `needs` para definir a ordem de execução.

## 🧭 Mentalidade Profissional:  

Pipeline multistage não é apenas organização técnica.

Ela representa:

- Controle.  
- Segurança.  
- Governança.  
- Rastreabilidade. 
- Redução de risco.  

Ambientes maduros não promovem código diretamente para produção sem validações intermediárias.  