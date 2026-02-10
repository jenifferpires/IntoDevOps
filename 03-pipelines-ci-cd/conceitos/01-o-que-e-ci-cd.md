# 🚦 01 — O que é CI/CD?

Antes de escrever qualquer pipeline, é essencial entender **por que CI/CD existe** e **quais problemas ele resolve**. Este conteúdo constrói o modelo mental necessário para usar pipelines de forma consciente em ambientes profissionais.

---

## 🤔 O problema antes do CI/CD.  

Antes de CI/CD, o fluxo comum era:

* desenvolvedores trabalham localmente.  
* integração acontece tardiamente.  
* erros aparecem perto do deploy.  
* deploys são manuais e arriscados.  

Consequências:

* bugs difíceis de rastrear.  
* conflitos de código frequentes.  
* medo de subir novas versões.  
* rollback complexo.  

CI/CD surge para **reduzir risco e aumentar previsibilidade**.

---

## 🔄 O que é Integração Contínua (CI)? 

**CI (Continuous Integration)** é a prática de:

* integrar código frequentemente.  
* validar mudanças automaticamente.  
* detectar erros o mais cedo possível.  

Na prática, CI envolve:

* build automático
* execução de testes
* validações estáticas (lint, segurança)

📌 Cada commit é uma oportunidade de validação.

---

## 🚀 O que é Entrega Contínua (CD)? 

**CD (Continuous Delivery)** é a prática de:

* manter o software sempre pronto para deploy.  
* automatizar etapas após a validação.  
* reduzir esforço manual.  

Importante:

* CD **não significa** deploy automático obrigatório.  
* o deploy pode ser manual ou automático.  

👉 A diferença está na **prontidão para entrega**.

---

## ⚖️ CI vs CD vs Deploy.  

* **CI** → valida o código.  
* **CD** → prepara para entrega.  
* **Deploy** → disponibiliza em ambiente.  

Esses conceitos são complementares, não sinônimos.

---

## 🧠 CI/CD como pipeline:  

Uma **pipeline** é a materialização do CI/CD:

* sequência automatizada de etapas
* gatilhos baseados em eventos (push, PR)
* execução reproduzível

Pipelines transformam código em **processo confiável**.

---

## 🔧 CI/CD no contexto DevOps:  

Em DevOps, CI/CD conecta:

* desenvolvimento
* operações
* automação

Benefícios:

* feedback rápido
* menos erros em produção
* rastreabilidade de mudanças
* rollback facilitado

👉 CI/CD é cultura apoiada por ferramentas.

---

## ⚠️ Erros comuns de iniciantes:  

* pular CI e focar só em deploy.  
* pipelines longas e frágeis.  
* não versionar pipelines.  
* ignorar falhas de pipeline.  

Esses erros anulam os benefícios do CI/CD.

---

## ✅ Conclusão:  

CI/CD existe para:

* reduzir risco
* aumentar qualidade
* automatizar com segurança

No próximo conteúdo, veremos **Pipeline como Código**, base para versionamento e rastreabilidade.
