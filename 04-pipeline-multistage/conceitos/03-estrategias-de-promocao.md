# ⬆️ 03 — Estratégias de Promoção entre Ambientes.  

Promover código entre ambientes significa controlar como uma versão validada avança de **Dev → QA → Prod**.

Essa promoção pode seguir diferentes estratégias, dependendo do nível de maturidade da equipe.

---

## 🎯 Objetivo:  

Entender:

- Como o código evolui entre ambientes.  
- Como reduzir riscos na promoção.  
- Como pipelines controlam essa progressão.  

---

## 🔄 1. Promoção Automática:  

Fluxo totalmente automatizado.

```text
Se DEV passou → executa QA  
Se QA passou → executa PROD
```
Vantagens:

- Velocidade.  
- Menos intervenção manual.  
- Ideal para times maduros com alta cobertura de testes.  

Riscos:

- Pode promover erro se testes forem insuficientes.  

## 🛑 2. Promoção com Aprovação Manual:  

Após sucesso em QA, exige validação humana antes de produção.

Exemplo no GitHub Actions:

- Uso de `environments`.  
- Proteção com required reviewers. 

Vantagens:

- Maior controle.  
- Segurança em ambientes críticos.  

Indicado para:

- Sistemas financeiros
- Ambientes regulados
- Deploys sensíveis

## 🏷️ 3. Promoção por Branch:  

Cada ambiente está associado a uma branch específica.

Exemplo:  

`develop` → Dev  
` release` → QA  
`main` → Prod  

Pipeline é disparada dependendo da branch.

Vantagens:

- Separação clara. 
- Controle por política de merge.  

## 📦 4. Promoção por Artefato:  

Em vez de rebuildar o código em cada ambiente:

- Gera artefato no Dev.  
- Promove o mesmo artefato para QA e Prod.  

Isso garante:

- Imutabilidade
- Reprodutibilidade
- Consistência

Essa é a abordagem mais madura.

### 🧠 Comparação Estratégica: 
| Estratégia       | Controle | Velocidade | Risco |
| ---------------- | -------- | ---------- | ----- |
| Automática       | Médio    | Alto       | Médio |
| Aprovação manual | Alto     | Médio      | Baixo |
| Por branch       | Médio    | Médio      | Médio |
| Por artefato     | Alto     | Alto       | Baixo |

## 🔐 Mentalidade Profissional: 

Promoção não é apenas “rodar um job”.

É:

- Garantir consistência
- Evitar rebuilds diferentes
- Controlar variáveis por ambiente
- Preservar rastreabilidade

Empresas maduras promovem artefatos, não código solto.
