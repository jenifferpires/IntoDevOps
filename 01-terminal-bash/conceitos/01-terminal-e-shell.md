# 01 — Terminal e Shell. 

## 🎯 Objetivo deste conteúdo:  

Este material apresenta os **conceitos fundamentais de terminal e shell**, que são a base de qualquer atuação em ambientes Linux e DevOps.

Antes de escrever scripts, automatizar tarefas ou criar pipelines, é essencial entender **onde os comandos são executados** e **quem os interpreta**.

---

## 💻 O que é o Terminal?

O **terminal** é uma interface de texto que permite ao usuário interagir diretamente com o sistema operacional por meio de comandos.

Em vez de clicar em botões (interface gráfica), você:

* digita instruções
* recebe respostas em texto
* executa tarefas de forma direta, previsível e automatizável

### Exemplos de terminais:  

* Terminal do Linux
* macOS Terminal
* Windows Terminal
* Git Bash
* Terminal do WSL (Ubuntu no Windows)

📌 Em ambientes de servidores, containers e pipelines **não existe interface gráfica**. O terminal é o meio principal de operação.

---

## 🧠 O que é um Shell?

O **shell** é o programa que:

* recebe o comando digitado no terminal
* interpreta esse comando
* solicita ao sistema operacional que o execute

👉 O terminal é a *janela*.
👉 O shell é o *intérprete*.

Sem o shell, o terminal não sabe o que fazer com o texto digitado.

---

## 🐚 Tipos de Shell.  

Existem vários shells. Os mais comuns:

* **sh** — shell mais antigo e simples
* **bash** — Bourne Again Shell (padrão na maioria das distros Linux)
* **zsh** — shell moderno (padrão no macOS)
* **fish** — shell interativo e amigável

Neste projeto, o foco é o **Bash**, pois:

* é amplamente usado em servidores
* é padrão em pipelines CI/CD
* é base para scripts de automação

---

## 🟢 O que é Bash?

**Bash** é um shell que também funciona como **linguagem de script**.

Isso significa que:

* você pode executar comandos manualmente
* ou automatizá-los em arquivos `.sh`

Exemplo de comando direto no terminal:

```bash
ls -l
```

Exemplo do mesmo comando dentro de um script Bash:

```bash
#!/bin/bash
ls -l
```

---

## 🧾 O Prompt de Comando.  

Ao abrir o terminal, você verá algo parecido com:

```text
jenyf@DESKTOP-XXXX:~$
```

Esse prompt contém informações importantes:

* `jenyf` → usuário logado
* `DESKTOP-XXXX` → nome da máquina (host)
* `~` → diretório atual (`/home/jenyf`)
* `$` → usuário comum (não root)

📌 Em scripts e automações, **saber quem é o usuário e onde você está é fundamental**.

---

## 🪟 Terminal no Windows (WSL).  

Neste projeto, o ambiente utilizado é:

* Windows como sistema host
* Ubuntu rodando via **WSL (Windows Subsystem for Linux)**

Isso permite:

* usar comandos Linux reais.  
* simular ambiente de servidor.  
* aprender DevOps sem máquina virtual pesada.  

⚠️ Importante:

* O filesystem do Linux fica em `/home`
* O Windows é montado em `/mnt/c`

Misturar esses caminhos sem entender a diferença é uma das maiores fontes de erro para iniciantes — e um aprendizado essencial deste módulo.

---

## 🔧 Por que DevOps depende do Terminal?

Em DevOps, o terminal é usado para:

* acessar servidores remotamente (SSH).  
* executar scripts de automação. 
* depurar falhas em produção.  
* analisar logs.  
* criar e executar pipelines.  
* operar containers.  

👉 Quem domina terminal e shell **não depende de interface gráfica** e consegue trabalhar em qualquer ambiente.

---

## 📌 Conclusão:  

Antes de aprender comandos ou escrever scripts, você precisa entender:

* o papel do terminal
* a função do shell
* por que o Bash é tão importante

Esses conceitos são a base para todo o restante do módulo.

➡️ **Próximo conteúdo:** `02-estrutura-diretorios.md`

Nele, veremos como o Linux organiza arquivos e por que caminhos corretos são críticos para automação.
