## 🧾 Visão Geral do Código

Este código gera um conjunto de dados sintéticos de regressão linear com ruído, usando a biblioteca `scikit-learn`. Em seguida, ele exibe esses dados em um gráfico de dispersão utilizando `matplotlib`.

---

## 🧰 Bibliotecas Utilizadas

### 1. `scikit-learn` (`sklearn`)
- 📚 **O que é:** Uma das bibliotecas mais populares para aprendizado de máquina em Python.
- 🔧 **Função aqui:** `make_regression` é usada para criar dados fictícios com padrão de regressão linear. Ideal para testes e visualizações.
- 💡 **Instalação:**
```bash
pip install scikit-learn
```

### 2. `matplotlib`
- 📊 **O que é:** Biblioteca essencial para criação de gráficos estáticos, interativos e animados.
- 🖼️ **Função aqui:** Cria o gráfico de dispersão para visualizar os dados gerados.
- 💡 **Instalação:**
```bash
pip install matplotlib
```

---

## 🧩 Explicação por Partes

### 🔢 1. Importação de Bibliotecas
```python
import matplotlib
from sklearn.datasets import make_regression
```
- `matplotlib` é importada parcialmente. O módulo mais utilizado (`pyplot`) será importado depois.
- `make_regression` vem de `sklearn.datasets` e é usada para gerar os dados.

---

### 🧪 2. Geração de Dados Sintéticos
```python
x, y = make_regression(n_samples=200, n_features=1, noise=30)
```
- `n_samples=200`: Gera 200 pontos de dados.
- `n_features=1`: Apenas uma variável independente (eixo X).
- `noise=30`: Adiciona variação aleatória para simular imperfeições reais no dado.

Resultado:
- `x`: Dados da variável independente.
- `y`: Dados da variável dependente com ruído.

---

### 📈 3. Visualização dos Dados
```python
import matplotlib.pyplot as plt
plt.scatter(x, y)
plt.show()
```
- `plt.scatter(x, y)`: Cria o gráfico de dispersão.
- `plt.show()`: Exibe o gráfico na tela.

O gráfico mostra a distribuição dos pontos, permitindo observar a tendência geral da regressão linear com ruído.

---

## 🎯 Conclusão

Este código é uma excelente introdução ao uso de dados sintéticos com `scikit-learn` e visualização com `matplotlib`. Ideal para testar algoritmos de regressão, visualização de dados e manipulação básica em Python.
