## 🔁 Estruturas de Repetição em Python

O código demonstra o uso de dois principais tipos de laços de repetição:

- `for` — ideal para iterar sobre coleções como listas
- `while` — utilizado quando o número de repetições não é previamente conhecido, baseado em uma condição lógica

---

## 📍 1. Estrutura de Repetição com `for`

### 🧾 Definição da lista
```python
lista = [1, 2, 3, 4, 5]
```
- Lista de números inteiros usada como base para iteração.

### 🌀 Loop com `for`
```python
for item in lista:
    print(item)
```
- **Objetivo**: percorrer os elementos da lista e imprimir cada um.
- **Sintaxe**: o `for` itera diretamente sobre os elementos sem precisar de índice.
- **Saída esperada**:
  ```
  1
  2
  3
  4
  5
  ```

---

## 📍 2. Estrutura de Repetição com `while`

### 🧾 Definição e controle de contador
```python
contador = 0
```
- Contador iniciado em 0 como variável de controle.

### 🔄 Loop com `while`
```python
while contador < 10:
    print(f'valor do contador é {contador}')
    contador += 1
```
- **Condição**: enquanto `contador` for menor que 10.
- **Atualização**: `contador` é incrementado com `+= 1` a cada iteração.
- **Saída esperada**:
  ```
  valor do contador é 0
  ...
  valor do contador é 9
  ```

---

## 💡 Comparação entre os Laços

| Característica      | `for`                             | `while`                          |
|---------------------|-----------------------------------|----------------------------------|
| Controle de Iteração| Implícito (automático na lista)   | Manual (via contador e condição)|
| Uso comum           | Listas, tuplas, strings           | Condições de parada variável     |
| Código mais limpo   | Sim                               | Pode exigir mais cuidado         |

---

## 🔧 Recursos Utilizados

- `print("=" * 100)` — separador visual que facilita a leitura no terminal.
- `f-strings` — para formatação dinâmica e intuitiva dos prints.
- Laços estruturais para demonstrar dois estilos de repetição.
