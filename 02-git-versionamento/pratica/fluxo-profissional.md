# 🧪 Prática Guiada — Fluxo Profissional com Git.  

Esta prática simula o **dia a dia de trabalho em um time profissional**, aplicando os conceitos aprendidos no Módulo 02.

O objetivo não é apenas executar comandos, mas **entender decisões**, consequências no histórico e impacto em pipelines DevOps.

---

## 🎯 Objetivo da Prática:  

Ao concluir esta prática, você será capaz de:

* Trabalhar com branches de forma consciente.  
* Criar commits pequenos e semânticos.  
* Simular desenvolvimento paralelo.  
* Gerar e resolver conflitos reais.  
* Manter um histórico limpo e explicável.  

---

## 🧩 Cenário Simulado.  

Você faz parte de um time com:

* uma branch principal (`main`)
* desenvolvimento feito em branches de feature
* integração via merge

Dois trabalhos paralelos serão simulados no **mesmo repositório**, como se fossem duas pessoas atuando.

---

## 1️⃣ Preparação do Ambiente.  

Garanta que você está na branch principal:

```bash
git checkout main
git pull
```

Crie um arquivo base para o exercício:

```bash
echo "Projeto Git Prática" > projeto.txt
git add projeto.txt
git commit -m "chore: adiciona arquivo base do projeto"
```

---

## 2️⃣ Simulação de Feature A.  

Crie a branch:

```bash
git checkout -b feature-a
```

Edite o arquivo:

```text
Projeto Git Prática
Feature A em desenvolvimento
```

Commit:

```bash
git add projeto.txt
git commit -m "feat: adiciona linha da feature A"
```

---

## 3️⃣ Simulação de Feature B.  

Volte para a main:

```bash
git checkout main
```

Crie outra branch:

```bash
git checkout -b feature-b
```

Edite o mesmo arquivo, na **mesma região**:

```text
Projeto Git Prática
Feature B em desenvolvimento
```

Commit:

```bash
git add projeto.txt
git commit -m "feat: adiciona linha da feature B"
```

---

## 4️⃣ Merge da Feature A.  

Volte para a main:

```bash
git checkout main
git merge feature-a
```

Neste ponto, o merge deve ocorrer **sem conflitos**.

---

## 5️⃣ Merge da Feature B (Conflito).  

Tente o merge:

```bash
git merge feature-b
```

Um conflito será gerado.

---

## 6️⃣ Resolução do Conflito.   

Abra o arquivo `projeto.txt` e você verá os marcadores:

```text
<<<<<<< HEAD
Projeto Git Prática
Feature A em desenvolvimento
=======
Projeto Git Prática
Feature B em desenvolvimento
>>>>>>> feature-b
```

Resolva manualmente para:

```text
Projeto Git Prática
Feature A em desenvolvimento
Feature B em desenvolvimento
```

Salve o arquivo.

Finalize a resolução:

```bash
git add projeto.txt
git commit -m "fix: resolve conflito entre feature A e B"
```

---

## 7️⃣ Limpeza de Branches.  

Após integração:

```bash
git branch -d feature-a
git branch -d feature-b
```

---

## 🧠 Análise DevOps.  

O que essa prática demonstra:

* branches curtas reduzem conflitos
* conflitos são previsíveis
* commits claros facilitam entendimento
* histórico limpo ajuda rollback
* merges podem disparar pipelines

Este fluxo simula exatamente o que acontece em times reais.

---

## ✅ Conclusão:  

Se você conseguiu executar essa prática entendendo **cada decisão**, você domina os fundamentos do Git em contexto profissional.

Este exercício fecha o **Módulo 02 — Git e Versionamento**.
