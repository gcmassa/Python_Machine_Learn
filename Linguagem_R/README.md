
---

# 📘 Introdução à Linguagem R: Guia Prático com Exemplos

Este documento reúne e explica, de forma didática, quatro códigos-fonte escritos em R. O objetivo é apresentar os fundamentos da linguagem por meio de exemplos práticos, cobrindo desde operações básicas até vetores, funções e matrizes.

---

## 🖥️ 1. Impressão de Texto

```r
print("hello world")
print("Hello, R!")
```

- **Função `print()`**: Exibe mensagens ou valores no console.
- **Uso comum**: Testes iniciais, depuração e visualização de resultados.

---

## 🧮 2. Operações Matemáticas e Atribuições

```r
X <- 1 + 1
Y <- 2 * 2
Z <- 8 / 4
K <- ((20+7)/3)^2
```

- **Operadores básicos**:
  - Soma: `+`
  - Multiplicação: `*`
  - Divisão: `/`
  - Potência: `^`
- **Precedência**: Parênteses controlam a ordem de execução.
- **Atribuição**: Usa `<-` para guardar valores em variáveis.

---

## 🔠 3. Sensibilidade a Maiúsculas e Minúsculas

```r
casa <- "todas as letras são minúsculas"
CASA <- "Todas as letras são maiúsculas"
```

- **Importante**: R diferencia letras maiúsculas de minúsculas.
- `casa` e `CASA` são objetos distintos.

---

## 📊 4. Estatísticas Básicas

### 🔹 Vetor de dados

```r
x <- c(12, 2, 2, 4.2, 18, 2, 54, -21, 8, -5)
```

### 🔹 Funções estatísticas

```r
mean(x)    # Média
median(x)  # Mediana
```

### 🔹 Moda (função personalizada)

```r
moda <- function(valor) {
  ux <- unique(valor)
  ux[which.max(tabulate(match(valor, ux)))]
}

moda_mult <- function(valor) {
  freq <- table(valor)
  moda_valores <- names(freq)[freq == max(freq)]
  return(as.numeric(moda_valores))
}
```

- **`moda()`**: Retorna o valor mais frequente.
- **`moda_mult()`**: Retorna todos os valores com frequência máxima.

---

## 📐 5. Cálculo de Volume

```r
raio <- 10
espessura <- 1
comprimento <- 70
volume <- pi * (raio - espessura)^2 * comprimento
```

- **Fórmula**: Volume de um cilindro com raio ajustado.
- **Resultado**: Aproximadamente `17802.7`

---

## 🔁 6. Operadores de Comparação

```r
x > y     # Maior que
x < y     # Menor que
x == y    # Igualdade
x != y    # Diferença
```

- **Aplicável a números e strings**.
- Exemplo com letras:
  ```r
  "G" != "M"  # TRUE
  ```

---

## 📦 7. Vetores e Concatenação

```r
vetor1 <- c(1, 3, 5, 9, 10)
vetor2 <- c(1, 4, 5, 8, 22)
vetor3 <- c(vetor1, vetor2)
```

- **`c()`**: Cria vetores.
- **Concatenação**: Junta dois vetores em um só.

---

## 🧮 8. Matrizes e Operações Element-wise

```r
A <- matrix(c(2, 4, 3, 1, 5, 7), nrow = 2, ncol = 3, byrow = TRUE)
B <- matrix(c(2, 5, 3, 1, 5, 12), nrow = 2, ncol = 3, byrow = TRUE)
A * B
```

- **`matrix()`**: Cria matrizes.
- **`byrow = TRUE`**: Preenche por linha.
- **`*`**: Multiplicação elemento a elemento.
- **Nota**: Para multiplicação matricial real, use `%*%`.

---

## ✅ Considerações Finais

- 📚 **Abrangência**: Os códigos abordam os principais fundamentos da linguagem R.
- 🧠 **Didático**: Ideal para iniciantes, com exemplos claros e comentados.
- 🔠 **Boas práticas**:
  - Uso de nomes intuitivos para variáveis.
  - Separação entre lógica e saída.
  - Comentários explicativos.
- 💡 **Sugestões para aprofundamento**:
  - Introdução a estruturas condicionais (`if`, `else`)
  - Uso de `for` e `while` para repetição
  - Criação de gráficos com `plot()` e `ggplot2`
  - Manipulação de dados com `dplyr` e `tidyverse`

---
