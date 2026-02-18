# 🌍 02 — Ambientes: Dev, QA e Prod.  

Uma pipeline multistage existe para organizar a promoção do software entre **ambientes distintos**, cada um com um propósito específico.

Compreender esses ambientes é fundamental para atuar profissionalmente com CI/CD.

---

## 🎯 Objetivo:  

Entender:

- O papel de cada ambiente
- O nível de controle aplicado em cada fase
- Como a pipeline representa essa progressão

---

## 🛠️ Ambiente DEV (Desenvolvimento):  

O ambiente de desenvolvimento é o primeiro estágio após o commit.

### Características:

- Execução rápida
- Validações básicas
- Feedback imediato ao desenvolvedor
- Pode rodar a cada `push`

### Exemplos de validação:

- Lint
- Build
- Testes unitários
- Execução de scripts

Objetivo principal:  
Garantir que o código não está quebrado.

---

## 🧪 Ambiente QA (Quality Assurance):  

O ambiente de QA adiciona um nível maior de verificação.

### Características:

- Execução após sucesso no Dev
- Testes mais completos
- Simulação mais próxima da produção

### Exemplos de validação:

- Testes de integração
- Testes automatizados mais robustos
- Validação de artefatos gerados
- Checagem de variáveis e configurações

Objetivo principal:  
Reduzir riscos antes da promoção para produção.

---

## 🚀 Ambiente PROD (Produção):  

Produção é o ambiente final.

Aqui o código é entregue ao usuário final.

### Características:

- Controle rigoroso
- Pode exigir aprovação manual
- Execução somente após sucesso completo das etapas anteriores

### Exemplos de ações:

- Deploy em servidor
- Publicação de container
- Atualização de serviço

Objetivo principal:  
Entregar valor com segurança.

---

## 🔄 Fluxo Conceitual:  

```text
Commit → DEV → QA → PROD
``` 
Se qualquer etapa falhar, o fluxo é interrompido.

Isso garante:

- Confiabilidade.  
- Rastreabilidade. 
- Segurança.  

## 🧠 Mentalidade DevOps:  

Separar ambientes não é burocracia.

É estratégia.

Empresas maduras utilizam:

- Ambientes isolados.  
- Controle de promoção.  
- Aprovação antes de produção.  
- Logs e auditoria.  

## 📌 Relação com GitHub Actions:  

No GitHub Actions, essa separação pode ser implementada com:

- `jobs` encadeados com `needs`.
- `environments`. 
- Aprovações manuais. 
- Proteção de branches.  

Veremos isso na prática nos próximos workflows.