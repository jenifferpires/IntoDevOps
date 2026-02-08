# ⚔️ 04 — Conflitos e Resolução.  

Conflitos de merge **não são erros** — são eventos naturais em projetos colaborativos. Este conteúdo mostra **por que conflitos acontecem**, como o Git os representa e **como resolvê-los com segurança**, sem perder histórico ou código.

Em times reais, saber resolver conflitos é sinal de maturidade técnica.

---

## 🤯 O que é um conflito de merge?

Um **conflito** ocorre quando:

* duas branches alteram a **mesma linha** de um arquivo.  
* ou alterações incompatíveis são feitas no mesmo trecho.  

O Git **não adivinha** qual versão é correta, então pede intervenção humana.

👉 Conflitos são decisões técnicas, não falhas do Git.

---

## 🧠 Quando conflitos costumam acontecer?

* Desenvolvimento paralelo em features relacionadas.  
* Branches mantidas por muito tempo.  
* Falta de sincronização com a branch base.  
* Alterações em arquivos centrais (configs, README, pipelines).  

---

## 🔍 Como o Git sinaliza um conflito?

Ao tentar um merge:

```bash
git merge feature-x
```

O Git interrompe o processo e marca os arquivos em conflito.

Verifique com:

```bash
git status
```

---

## 🧩 Marcadores de conflito

Dentro do arquivo, o Git insere marcadores:

```text
<<<<<<< HEAD
conteúdo da branch atual
=======
conteúdo da outra branch
>>>>>>> feature-x
```

Seu papel é:

* analisar as duas versões.  
* decidir o que fica.  
* remover os marcadores.  

---

## 🛠️ Passo a passo para resolver conflitos

1️⃣ Abrir o arquivo em conflito.  

2️⃣ Avaliar as diferenças.  

3️⃣ Ajustar manualmente o conteúdo final.  

4️⃣ Remover todos os marcadores.  

5️⃣ Marcar como resolvido:

```bash
git add arquivo_em_conflito.txt
```

6️⃣ Finalizar o merge:

```bash
git commit
```

---

## 🚫 O que **não** fazer

* Não usar `git checkout --theirs` sem entender
* Não apagar código às cegas
* Não usar `git reset --hard` para “sumir” com o conflito

Essas ações podem causar perda de trabalho.

---

## 🧠 Conflitos no contexto DevOps.  

Em ambientes DevOps:

* conflitos podem quebrar pipelines
* arquivos YAML são alvos frequentes
* resolução correta evita falhas em produção

Boas práticas:

* branches pequenas
* merges frequentes
* revisão via Pull Request

---

## ⚠️ Erros comuns de iniciantes:  

* Medo de conflitos
* Resolver sem entender o código
* Commits confusos após resolução

Conflito resolvido corretamente **melhora o histórico**, não piora.

---

## ✅ Conclusão:  

Conflitos são inevitáveis.

Saber resolvê-los:

* evita retrabalho
* fortalece colaboração
* demonstra senioridade

No próximo conteúdo, veremos **workflows Git usados por times reais**.
