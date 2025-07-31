# 🖥️ Documentação do Código

---

## 🖥️ 1. Saída inicial

```r
print("hello world")
```

- **Descrição**: Exibe a mensagem `"hello world"` no console.
- **Propósito**: Tradicionalmente usado como primeiro teste em qualquer linguagem de programação.

---

## 🧮 2. Exemplos de atribuição e operações básicas

### 🔹 2.1 Atribuições com operações matemáticas

```r
objeto1 <- 3*3
objeto2 <- 2*2
objeto3 <- objeto1 + objeto2
```

- `objeto1`: resultado de \(3 \times 3 = 9\)
- `objeto2`: resultado de \(2 \times 2 = 4\)
- `objeto3`: soma dos dois objetos \(9 + 4 = 13\)

### 🔹 2.2 Impressão dos resultados

```r
print(objeto1)
print(objeto2)
print(objeto3)
```

- Exibe os valores atribuídos anteriormente.

---

## 🔠 3. Sensibilidade a maiúsculas e minúsculas

```r
(casa <- "todas as letras são minúsculas")
(CASA <- "Todas as letras são maiúsculas")
```

- **Descrição**: Cria dois objetos distintos (`casa` e `CASA`) com nomes semelhantes, mas com capitalização diferente.
- **Importante**: O R é **case-sensitive**, ou seja, diferencia letras maiúsculas de minúsculas.

```r
print(casa)
print(CASA)
```

- Exibe os conteúdos de cada variável, confirmando que são tratadas separadamente.

---

## 📐 4. Exemplo matemático: cálculo de volume

```r
raio <- 10
espessura <- 1
comprimento <- 70
volume <- pi*(raio - espessura)^2*comprimento
print(volume)
```

- **Fórmula usada**: Volume de um cilindro com raio ajustado pela espessura.
- **Cálculo**:
  - Raio efetivo: \(10 - 1 = 9\)
  - Área da base: \(\pi \times 9^2 = \pi \times 81\)
  - Volume: \(\pi \times 81 \times 70 \approx 17802.7\)

---

## 🔁 5. Operadores de comparação

```r
x <- 10
y <- 20

print(x > y)  # FALSE
print(x < y)  # TRUE
```

- **Descrição**: Compara os valores de `x` e `y` usando operadores relacionais.

### 🔹 5.1 Comparação de strings

```r
primeira_letra_primeiro_nome <- "G"
primeira_letra_segundo_nome <- "M"

primeira_letra_primeiro_nome == primeira_letra_segundo_nome
print(primeira_letra_primeiro_nome != primeira_letra_segundo_nome)
```

- Compara se as letras são iguais (`==`) ou diferentes (`!=`).
- Resultado: `"G" != "M"` → `TRUE`

---

## 📦 6. Vetores e concatenação

```r
(primeiro.vetor1 <- c(1, 3, 5, 9, 10))
(primeiro.vetor2 <- c(1, 4, 5, 8, 22))
(primeiro.vetor3 <- c(primeiro.vetor1, primeiro.vetor2))
print(primeiro.vetor3)
```

- **Descrição**:
  - Cria dois vetores com números inteiros.
  - Concatena os dois vetores em `primeiro.vetor3`.
- **Resultado**: Um vetor com 10 elementos.

---

## 🧮 7. Matrizes e operações element-wise

```r
A <- matrix(c(2, 4, 3, 1, 5, 7), nrow = 2, ncol = 3, byrow = TRUE)
B <- matrix(c(2, 5, 3, 1, 5, 12), nrow = 2, ncol = 3, byrow = TRUE)
```

- **Descrição**: Cria duas matrizes 2x3 preenchidas linha por linha.

```r
print(A)
print("X")
print(B)
print("IGUAL")
print(A * B)
```

- **Operação**: Multiplicação elemento a elemento (`*`), não é multiplicação matricial.
- **Exemplo**:
  - A[1,1] = 2 × B[1,1] = 2 → 4
  - A[1,2] = 4 × B[1,2] = 5 → 20
  - ...

---

## ✅ Considerações Finais

- 📌 **Didático**: O código cobre conceitos fundamentais da linguagem R — atribuição, vetores, operadores, funções matemáticas e matrizes.
- 🔠 **Importante lembrar**: R diferencia maiúsculas de minúsculas em nomes de objetos.
- 🧠 **Boas práticas**:
  - Comentários bem colocados ajudam na compreensão.
  - Uso de `print()` para verificar resultados é ótimo para aprendizado.
- 📐 **Sugestão**: Para multiplicação matricial real, use `%*%` em vez de `*`.

---

