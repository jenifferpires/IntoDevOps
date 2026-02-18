# 🔐 04 — Controle e Governança em Pipelines.  

Pipelines multistage não existem apenas para organizar execução.

Elas são mecanismos de **controle, governança e redução de risco**.

Ambientes maduros tratam pipeline como parte da estratégia de segurança.

---

## 🎯 Objetivo:  

Compreender:

- Como controlar acesso a ambientes.  
- Como garantir rastreabilidade.  
- Como aplicar governança em CI/CD.  

---

## 🛑 Proteção de Ambientes:  

Ferramentas como GitHub Actions permitem:

- Definir ambientes (dev, qa, prod)
- Exigir aprovação manual antes de executar
- Limitar quem pode aprovar deploy
- Registrar histórico de execuções

Isso reduz risco de deploy indevido.

---

## 🏷️ Proteção de Branches:  

Branches críticas como `main` podem ter:

- Pull request obrigatório
- Revisão obrigatória
- Bloqueio de push direto
- Execução obrigatória de pipeline antes de merge

Isso garante que somente código validado avance.

---

## 📜 Logs e Auditoria:  

Cada execução de pipeline gera:

- Histórico de execução
- Logs detalhados
- Registro de falhas
- Identificação de quem aprovou ou executou

Isso permite:

- Auditoria técnica
- Investigação de incidentes
- Conformidade regulatória

---

## 📦 Imutabilidade de Artefatos:  

Boas práticas recomendam:

- Gerar artefato uma única vez
- Promover o mesmo artefato entre ambientes
- Evitar rebuild em produção

Isso garante que o que foi testado é exatamente o que foi entregue.

---

## 🔄 Controle de Variáveis por Ambiente:  

Cada ambiente pode ter:

- Variáveis próprias
- Segredos isolados
- Configurações diferentes

Exemplo:

- Banco de dados DEV ≠ Banco de dados PROD
- Chaves e tokens distintos

Isso evita vazamento de dados sensíveis.

---

## 🧠 Mentalidade Profissional:  

Governança não é burocracia.

É:

- Redução de risco
- Proteção da empresa
- Garantia de qualidade
- Conformidade com políticas internas

Em empresas reguladas (financeiras, saúde, governo), isso é obrigatório.

---
