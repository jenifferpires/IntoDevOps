# 🧾 02 — Pipeline como Código.  

Após entender **o que é CI/CD**, o próximo passo é compreender **como ele é definido, versionado e mantido**. É aqui que entra o conceito de **Pipeline como Código**.

---

## 🤔 O problema de pipelines manuais.  

Antes do Pipeline como Código, pipelines eram:

* configuradas via interface gráfica.  
* dependentes de cliques manuais.  
* pouco rastreáveis.  
* difíceis de reproduzir.  

Consequências:

* ninguém sabia exatamente o que rodava.  
* mudanças não eram versionadas.  
* rollback era complexo ou impossível.  

---

## 📦 O que é Pipeline como Código.  

**Pipeline como Código** significa:

* definir pipelines em arquivos de texto.  
* versionar junto com o código da aplicação.  
* tratar pipeline como parte do sistema.  

Normalmente escrita em:

* YAML
* JSON
* Groovy (em alguns casos)

📌 A pipeline vira código auditável.

---

## 🧠 Benefícios principais.  

### 🔍 Rastreabilidade:  

* toda mudança tem commit.  
* histórico claro de evolução.  

### 🔁 Reprodutibilidade:  

* pipeline roda igual em qualquer ambiente.  

### 🔄 Rollback simples:  

* reverter commit = reverter pipeline.  

### 👥 Colaboração:  

* revisão por pull request
* padronização entre times

---

## 🔗 Pipeline e Git:  

Pipeline como Código depende diretamente de Git:

* versionamento
* branches
* histórico

👉 Sem Git, não existe Pipeline como Código de verdade.

---

## 🧪 Pipeline como contrato:  

A pipeline passa a ser um **contrato técnico**:

* define como o código é validado
* estabelece critérios mínimos de qualidade
* impede deploys fora do padrão

Se a pipeline falha, o código **não avança**.

---

## ⚠️ Erros comuns de iniciantes:  

* pipelines enormes e acopladas
* lógica complexa demais no YAML
* segredos hardcoded
* pipeline fora do repositório

Pipeline deve ser:

* simples
* legível
* versionada

---

## 🔧 Pipeline como Código em DevOps:  

Em DevOps, pipeline como código garante:

* alinhamento entre dev e ops
* automação confiável
* menor dependência de pessoas

👉 Pessoas falham, código é auditável.

---

## ✅ Conclusão:  

Pipeline como Código transforma CI/CD em:

* processo confiável
* prática escalável
* ativo técnico do time

No próximo conteúdo, veremos **eventos e gatilhos de pipeline**, conectando código a automação real.
