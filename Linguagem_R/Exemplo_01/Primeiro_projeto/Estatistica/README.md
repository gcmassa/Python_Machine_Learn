# 🖥️ Documentação do Código

---

## 🧮 1. Criação do Vetor

```r
x <- c(12, 2, 2, 4.2, 18, 2, 54, -21, 8, -5)
```

- **Descrição**: Cria um vetor numérico chamado `x` com 10 elementos.
- **Observação**: Há uma linha comentada com outro vetor alternativo, que pode ser usado para testes comparativos.

---

## 🧠 2. Funções para cálculo da moda

Como o R não possui uma função nativa para moda, o código define duas abordagens:

### 🔹 2.1 Função `moda()`: Moda Simples

```r
moda <- function(valor) {
    ux <- unique(valor)
    ux[which.max(tabulate(match(valor, ux)))]
}
```

- **Passo a passo**:
  - `unique(valor)`: extrai os valores únicos do vetor.
  - `match(valor, ux)`: mapeia os índices dos valores originais em relação aos únicos.
  - `tabulate(...)`: conta a frequência de cada valor.
  - `which.max(...)`: retorna o índice do valor mais frequente.
- **Resultado**: Retorna **apenas um valor** — o primeiro com maior frequência.

### 🔹 2.2 Função `moda_mult()`: Moda Múltipla

```r
moda_mult <- function(valor) {
    freq <- table(valor)
    moda_valores <- names(freq)[freq == max(freq)]
    return(as.numeric(moda_valores))
}
```

- **Passo a passo**:
  - `table(valor)`: cria uma tabela de frequência.
  - `freq == max(freq)`: identifica os valores com frequência máxima.
  - `names(...)`: extrai os nomes (valores) com essa frequência.
  - `as.numeric(...)`: converte os nomes para números.
- **Resultado**: Retorna **todos os valores** que compartilham a maior frequência.

---

## 📊 3. Aplicação das funções e estatísticas básicas

### 🔹 3.1 Moda múltipla

```r
result.moda_mult <- moda_mult(x)
print(result.moda_mult)
```

- **Resultado esperado**: `[1] 2` (se o valor 2 for o mais frequente no vetor `x`).

### 🔹 3.2 Moda simples

```r
result.moda <- moda(x)
print(result.moda)
```

- **Resultado esperado**: `[1] 2` (mesmo valor, mas apenas o primeiro mais frequente).

### 🔹 3.3 Média

```r
result.mean <- mean(x)
print(result.mean)
```

- **Descrição**: Calcula a média aritmética dos valores do vetor `x`.

### 🔹 3.4 Mediana

```r
median.result <- median(x)
print(median.result)
```

- **Descrição**: Retorna o valor central do vetor ordenado.

---

## 🧮 4. Cálculo adicional

```r
print(((20 + 7)/3)^2)
```

- **Descrição**: Executa uma operação matemática isolada:
  - Soma: \( 20 + 7 = 27 \)
  - Divisão: \( 27 / 3 = 9 \)
  - Potência: \( 9^2 = 81 \)
- **Resultado**: `81`

---

## ✅ Considerações Finais

- 🔧 **Modularidade**: O uso de funções para moda é uma ótima prática, já que o R não oferece suporte nativo.
- 📌 **Moda múltipla vs. simples**: A função `moda_mult()` é mais robusta, pois considera empates.
- 📈 **Estatísticas básicas**: Média e mediana são bem aplicadas e úteis para análise exploratória.
- 🧪 **Teste adicional**: O cálculo final parece ser um teste ou exemplo de operação matemática, talvez para ilustrar sintaxe ou lógica.

---
