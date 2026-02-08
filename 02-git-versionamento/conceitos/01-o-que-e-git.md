# 📦 O que é Git?

Antes de aprender comandos, é essencial entender **o problema que o Git resolve** e **como ele pensa**. Este arquivo constrói o modelo mental necessário para usar Git de forma consciente em ambientes profissionais e DevOps.

---

## 🤔 Por que o Git existe?

Em projetos de software, arquivos mudam constantemente:

* código é alterado
* bugs são corrigidos
* novas funcionalidades surgem
* várias pessoas trabalham ao mesmo tempo

Sem controle de versão, isso gera:

* perda de histórico
* sobrescrita de arquivos
* dificuldade de colaboração
* impossibilidade de rastrear erros

👉 **O Git existe para registrar, organizar e permitir a colaboração segura sobre mudanças em arquivos ao longo do tempo.**

---

## 🧠 Git não é apenas um "backup".  

Um erro comum de iniciantes é pensar que Git serve apenas para salvar versões do código.

Na prática, Git é:

* um **sistema de snapshots** (fotografias do estado do projeto)
* distribuído (cada desenvolvedor tem o histórico completo)
* projetado para trabalho em equipe

Cada commit representa uma **fotografia completa do projeto naquele momento**, não apenas um conjunto de diferenças soltas.

---

## 📸 Modelo mental: snapshots.  

Sempre que você cria um commit:

* o Git registra o estado dos arquivos versionados
* cria uma referência única (hash)
* liga esse estado ao histórico anterior

Isso permite:

* voltar no tempo
* comparar versões
* entender quando e por que algo mudou

Esse modelo é fundamental para entender:

* branches
* merges
* resolução de conflitos

---

## 🌳 Git é distribuído.  

Diferente de sistemas centralizados, no Git:

* cada clone possui todo o histórico
* é possível trabalhar offline
* falhas no servidor não destroem o projeto

Essa característica é essencial para:

* times distribuídos
* pipelines CI/CD
* resiliência operacional

---

## 🛠️ Git no contexto DevOps.  

Em DevOps, o Git é mais do que versionamento de código:

* pipelines são disparadas por commits
* infraestrutura é versionada como código (IaC)
* deploys são rastreáveis
* rollback depende de histórico confiável

👉 **Sem Git bem utilizado, não existe automação segura.**

---

## ⚠️ Erros comuns de iniciantes:  

* Commits grandes demais
* Mensagens genéricas ("update", "teste")
* Medo de usar branches
* Uso excessivo de `git push --force`

Todos esses pontos serão trabalhados ao longo do módulo.

---

## ✅ Conclusão:  

Antes de decorar comandos, entenda:

* Git registra estados.  
* Git conta a história do projeto.  
* Git é a base da colaboração e automação.  

No próximo arquivo, vamos entrar no **repositório, staging e commits**, agora com o modelo mental correto.
