# 🧱 04 — Estrutura Básica de uma Pipeline.  

Depois de entender **CI/CD**, **pipeline como código** e **eventos**, chegou a hora de visualizar **como uma pipeline é organizada na prática**. Este conteúdo cria o mapa mental que será usado em qualquer ferramenta de CI/CD.

---

## 🧠 Pipeline como fluxo:  

Uma pipeline é um **fluxo de etapas automatizadas** que transforma código em algo validado e pronto para entrega.

Visualmente, pense em:

```
Evento → Stages → Jobs → Steps → Resultado
```

Cada nível tem uma responsabilidade clara.

---

## 🧩 Stages (estágios):  

**Stages** representam grandes fases do processo.

Exemplos comuns:

* build
* test
* deploy

Características:

* executam em ordem
* falha em um stage bloqueia os próximos

👉 Stages ajudam a entender *onde* algo quebrou.

---

## ⚙️ Jobs:  

**Jobs** são unidades de trabalho dentro de um stage.

Características:

* podem rodar em paralelo
* executam em ambientes isolados
* possuem responsabilidades específicas

Exemplo:

* job de testes unitários
* job de lint

---

## 🧪 Steps:  

**Steps** são os comandos executados.

Exemplos:

* instalar dependências
* rodar script
* executar testes

São normalmente comandos de shell ou ações reutilizáveis.

---

## 🖥️ Runners e ambiente:  

Toda pipeline roda em um **runner**:

* máquina virtual
* container
* servidor dedicado

O ambiente define:

* sistema operacional
* ferramentas disponíveis
* variáveis de ambiente

👉 Ambiente previsível = pipeline confiável.

---

## 🔁 Sucesso e falha:  

Uma pipeline:

* **passa** quando todas as etapas têm sucesso
* **falha** quando qualquer etapa retorna erro

Falhas são desejáveis:

* impedem código defeituoso de avançar
* fornecem feedback rápido

---

## ⚠️ Erros comuns de iniciantes:  

* pipelines longas sem divisão clara
* misturar lógica complexa nos steps
* não isolar responsabilidades
* não tratar falhas corretamente

Esses erros dificultam manutenção e debug.

---

## 🔧 Estrutura e DevOps:  

Em DevOps, uma pipeline bem estruturada:

* facilita colaboração
* reduz dependência de pessoas
* aumenta confiança no deploy

👉 Estrutura não é burocracia, é segurança.

---

## ✅ Conclusão:  

Entender a estrutura básica permite:

* ler qualquer pipeline
* escrever YAML com intenção
* evoluir para pipelines multistage

No próximo conteúdo, entraremos em **GitHub Actions**, aplicando tudo isso na prática.
