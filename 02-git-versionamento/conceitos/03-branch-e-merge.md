# 🌿 Branch e Merge.

Até aqui, trabalhamos com um único fluxo linear de commits. Na prática, isso não escala. É aqui que entram **branches** — um dos maiores diferenciais do Git.

Este conteúdo explica **por que branches existem**, como funcionam internamente e como usá-las de forma profissional em times e pipelines.

---

## 🌳 O que é uma branch?

Uma **branch** é uma linha independente de desenvolvimento dentro do mesmo repositório.

Tecnicamente, uma branch é apenas:

* um ponteiro para um commit específico

Ela não copia arquivos nem cria um repositório novo.

👉 Branches permitem trabalhar em paralelo sem quebrar a linha principal do projeto.

---

## 🧠 Branch principal.  

Por padrão, o Git cria uma branch principal chamada:

* `main` (ou `master` em projetos antigos)

Essa branch representa:

* código estável
* base para deploy
* ponto de integração

Boa prática: **não desenvolver diretamente na branch principal**.

---

## 🛠️ Criar e alternar branches.  

### Criar uma nova branch

```bash
git branch nova-feature
```

### Alternar para a branch

```bash
git checkout nova-feature
```

Ou, de forma mais comum:

```bash
git checkout -b nova-feature
```

---

## 📌 HEAD e ponteiros.  

O **HEAD** indica:

* onde você está trabalhando agora.  

Quando você muda de branch, o HEAD passa a apontar para outro commit.

Isso explica:

* por que arquivos mudam ao trocar de branch
* por que commits vão para a branch atual

---

## 🔀 O que é merge?

**Merge** é o processo de integrar mudanças de uma branch em outra.

Exemplo comum:

* desenvolver em `feature`
* integrar na `main`

```bash
git checkout main
git merge nova-feature
```

---

## ⚖️ Merge fast-forward vs merge commit

### Fast-forward

* acontece quando não há divergência.
* histórico linear.

### Merge commit

* ocorre quando as branches divergem.
* cria um commit de merge.

Ambos são válidos, dependendo do workflow.

---

## 🧠 Branches no contexto DevOps.  

Em times DevOps:

* branches disparam pipelines.
* PRs validam código automaticamente.
* merges podem representar deploys.

Exemplos:

* merge em `main` → deploy em produção.
* merge em `develop` → deploy em homologação.

👉 **Branches são ferramentas de controle operacional.**

---

## ⚠️ Erros comuns:  

* Desenvolver direto na `main`.  
* Criar branches gigantes.  
* Manter branches antigas sem uso.  
* Não sincronizar com a branch base.  

---

## ✅ Conclusão:  

Branches permitem:

* paralelismo
* segurança
* colaboração
* automação

No próximo passo, veremos **conflitos de merge e como resolvê-los**, algo inevitável em projetos reais.
