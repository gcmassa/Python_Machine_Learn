## 🧠 Introdução às Estruturas Condicionais em Python

Este script apresenta exemplos de estruturas de decisão, fundamentais para controle de fluxo na programação. Ele aborda:
- **Condicional simples** (`if`)
- **Condicional composta** (`if...else`)
- **Condicional aninhada/múltipla** (`if...elif...else`)

---

## 🔄 1. Estrutura Condicional Simples

```python
soma = 3
print(f'A soma é: {soma}')
```

### ✔️ Avaliação do valor
```python
if (soma > 0):
    print('A soma é maior que zero')
else:
    print('A soma é menor que zero')
```

- **Condição testada**: se a variável `soma` é maior que 0.
- **Resultado**: imprime uma mensagem conforme o valor.
- ✅ Exemplo de estrutura condicional **composta** com `else`.

---

## 🔢 2. Comparação entre Variáveis Numéricas

```python
numero1 = 2
numero2 = 3
print(f'Número 1: {numero1}, Número 2: {numero2}')
```

### ✔️ Teste de igualdade
```python
if (numero1 == numero2):
    print('Os valores são iguais')
else:
    print('Os valores são diferentes')
```

- **Verificação lógica**: se `numero1` é igual a `numero2`.
- Exibe resultado dependendo da comparação.
- Boa prática para verificar condições específicas entre variáveis.

---

## 🌲 3. Estrutura Condicional Aninhada (Encadeada)

```python
if soma > 0:
    print('Soma é maior que zero')
elif soma == 0:
    print('Soma é igual a zero')
else:
    print('Soma é menor que zero')
```

### 🧭 Encadeamento lógico com múltiplas condições:
- **`if`** testa se `soma > 0`
- **`elif`** testa se `soma == 0`
- **`else`** cobre o caso onde `soma < 0`

➡️ Permite lidar com vários cenários distintos com uma única estrutura.

---

## 🧩 Recursos Complementares Utilizados

- `print("=" * 100)` — usado como quebra visual entre blocos de execução.
- `f-strings` para inserção dinâmica de variáveis dentro das mensagens.
- Comparadores: `==`, `>`, `<` para expressar lógica condicional.
