# 📦  Repositório e Commit.  

Agora que o modelo mental do Git está claro, vamos entender **como o Git organiza o trabalho no dia a dia**: repositório, áreas de trabalho e commits.

Este é um dos pontos mais importantes do Git — e também onde muitos problemas começam quando não é bem compreendido.

---

## 📁 O que é um repositório Git?

Um **repositório Git** é um diretório que contém:

* seus arquivos de projeto
* uma pasta oculta chamada `.git/`

Essa pasta `.git/` guarda:

* todo o histórico de commits
* referências de branches
* metadados do repositório

👉 **Se a pasta `.git/` existir, aquele diretório é um repositório Git.**

---

## 🧠 Áreas de trabalho do Git.  

O Git trabalha com **três áreas principais**:

### 1️⃣ Working Tree (Diretório de trabalho)

* onde você edita os arquivos
* mudanças ainda não versionadas

### 2️⃣ Staging Area (Área de preparação).  

* onde você seleciona o que vai entrar no próximo commit
* controlada pelo comando `git add`

### 3️⃣ Repositório (Histórico).  

* onde os commits ficam registrados.  
* estado permanente do projeto.  

Visualmente:

```text
Arquivo → Staging → Commit
```

Esse fluxo dá **controle fino** sobre o que é versionado.

---

## ✍️ O que é um commit?

Um **commit** é:

* um snapshot do projeto
* com autor, data e mensagem
* ligado ao histórico anterior

Um bom commit responde três perguntas:

* O que mudou?
* Por que mudou?
* Em qual contexto?

Commits são a **linha do tempo do projeto**.

---

## 🛠️ Comandos fundamentais.  

### Inicializar um repositório:   

```bash
git init
```

### Ver estado do repositório:  

```bash
git status
```

Esse é um dos comandos mais importantes do Git.

### Adicionar arquivos ao staging:  

```bash
git add arquivo.txt
git add .
```

### Criar um commit:  

```bash
git commit -m "mensagem clara"
```

---

## 🧾 Mensagens de commit (boas práticas).  

Boas mensagens são:

* curtas
* objetivas
* descritivas

Exemplos:

* `docs: adiciona documentação inicial do módulo`
* `feat: cria script de monitoramento`
* `fix: corrige erro de permissão no script`

Evite:

* `update`
* `teste`
* `ajustes`

---

## ⚠️ Erros comuns de iniciantes:  

* Fazer commit de tudo sem revisar.  
* Commits muito grandes.  
* Esquecer de usar o staging.  
* Não verificar `git status`.  

Esses erros geram histórico confuso e difícil de manter.

---

## 🧠 Git e DevOps.  

Em ambientes DevOps:

* cada commit pode disparar uma pipeline
* commits ruins geram builds ruins
* histórico limpo facilita rollback

👉 **Commit é uma decisão técnica, não um detalhe.**

---

## ✅ Conclusão:  

Entender repositório e commit permite:

* usar Git com segurança
* colaborar melhor
* construir automações confiáveis

No próximo passo, entraremos em **branches e merges**, onde o Git realmente mostra seu poder em times.
