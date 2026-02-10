# ⚡ 03 — Eventos e Gatilhos de Pipeline. 

Uma pipeline não roda sozinha. Ela precisa de **um evento** que diga *quando* iniciar. Entender eventos e gatilhos é essencial para criar pipelines eficientes, previsíveis e alinhadas ao fluxo de trabalho do time.

---

## 🤔 O que são eventos de pipeline?  

Um **evento** é algo que acontece no repositório ou no tempo e dispara a execução da pipeline.

Exemplos comuns:

* push de código;  
* abertura de pull request;  
* merge em branch principal;  
* execução agendada.  

📌 Eventos conectam **ações humanas** à **automação**.

---

## 🚀 Principais tipos de gatilhos:  

### 🔹 Push: 

Dispara quando código é enviado ao repositório.
Usado para:

* validações rápidas
* build automático

⚠️ Pode gerar execuções excessivas se mal configurado.

---

### 🔹 Pull Request (PR):  

Dispara quando um PR é aberto ou atualizado.
Usado para:

* testes completos
* revisão automatizada
* bloqueio de merge em caso de falha

👉 Muito comum em ambientes profissionais.

---

### 🔹 Merge:  

Dispara quando código é integrado a uma branch alvo.
Usado para:

* deploy em ambientes superiores
* geração de artefatos

Normalmente associado a `main` ou `develop`.

---

### 🔹 Agendamento (schedule):  

Executa a pipeline em horários definidos.
Usado para:

* jobs de manutenção
* validações periódicas
* backups

📌 Não depende de ação humana.

---

## 🧠 Pipeline orientada a eventos:  

Em DevOps, pipelines são **event-driven**:

* respondem a mudanças
* automatizam reações
* reduzem intervenção manual

Isso aumenta:

* previsibilidade
* confiabilidade
* velocidade

---

## 🔧 Escolhendo o gatilho certo:  

Boas práticas:

* push → validações rápidas
* PR → testes completos
* merge → deploy
* schedule → tarefas recorrentes

👉 Nem toda pipeline deve rodar em todo evento.

---

## ⚠️ Erros comuns de iniciantes:  

* rodar pipeline pesada em todo push;  
* não separar eventos por ambiente;  
* ignorar custo e tempo de execução;  
* gatilhos mal definidos.  

Esses erros tornam pipelines lentas e caras.

---

## ✅ Conclusão:  

Eventos e gatilhos definem:

* quando a automação acontece
* como o fluxo de entrega funciona

No próximo conteúdo, veremos **estrutura básica de uma pipeline**, conectando conceitos à prática.
