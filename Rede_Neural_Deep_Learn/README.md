## Implementação de uma Rede DEEP LEARN para reconhecimento de Dígitos
## 🧠 1. Importação de Bibliotecas

Essas bibliotecas são essenciais para manipulação de dados, construção da rede neural e visualização:

- `numpy`: operações matemáticas e manipulação de arrays.
- `torch`: biblioteca principal do PyTorch.
- `torch.nn.functional`: funções auxiliares para redes neurais.
- `torchvision`: acesso a datasets e transformações de imagem.
- `matplotlib.pyplot`: visualização de imagens.
- `time`: medição de tempo de execução.
- `torch.nn`: construção de camadas da rede.
- `torch.optim`: algoritmos de otimização.

---

## 🖼️ 2. Preparação dos Dados

### 🔄 Transformação
```python
transform = transforms.ToTensor()
```
- Converte imagens PIL para tensores PyTorch.

### 📚 Carregamento do Dataset MNIST
```python
trainset = datasets.MNIST(...)
valset = datasets.MNIST(...)
```
- `train=True`: dados de treino.
- `train=False`: dados de validação.
- `download=True`: baixa o dataset se necessário.

### 🚚 DataLoaders
```python
trainloader = torch.utils.data.DataLoader(...)
valloader = torch.utils.data.DataLoader(...)
```
- `batch_size=64`: processa 64 imagens por vez.
- `shuffle=True`: embaralha os dados para melhor generalização.

---

## 👁️ 3. Visualização de Imagem

```python
dataiter = iter(trainloader)
imagens, etiquetas = next(dataiter)
plt.imshow(imagens[0].numpy().squeeze(), cmap='gray_r')
```
- Exibe a primeira imagem do lote em escala de cinza.
- `squeeze()` remove dimensões extras.

### 📐 Verificação de Dimensões
```python
print(imagens[0].shape)
print(etiquetas[0].shape)
```
- Confirma o formato dos tensores de imagem e etiqueta.

---

## 🏗️ 4. Definição da Arquitetura da Rede Neural

### 🔧 Classe Modelo
```python
class Modelo(nn.Module):
```
- Herda de `nn.Module`, estrutura base do PyTorch.

### 🧩 Camadas da Rede
```python
self.linear1 = nn.Linear(28*28, 128)
self.linear2 = nn.Linear(128, 64)
self.linear3 = nn.Linear(64, 10)
```
- Rede totalmente conectada (fully connected).
- Entrada: 784 neurônios (28x28 pixels).
- Saída: 10 neurônios (dígitos de 0 a 9).

### 🔁 Forward Pass
```python
def forward(self, X):
    ...
    return F.log_softmax(X, dim=1)
```
- Aplica ReLU nas camadas ocultas.
- `log_softmax`: prepara saída para cálculo da perda com `NLLLoss`.

---

## 🏋️ 5. Função de Treinamento

### ⚙️ Configurações Iniciais
```python
otimizador = optim.SGD(...)
criterio = nn.NLLLoss()
EPOCHS = 10
```
- `SGD`: gradiente descendente estocástico.
- `momentum=0.5`: acelera a convergência.
- `NLLLoss`: perda logarítmica negativa.

### 🔄 Loop de Treinamento
```python
for epoch in range(EPOCHS):
    for imagens, etiquetas in trainloader:
        ...
```
- Converte imagens para vetores de 784 elementos.
- Zera gradientes, calcula perda, faz backpropagation e atualiza pesos.

### 📊 Monitoramento
```python
print("Epoch {} - Perda: {}".format(...))
```
- Exibe perda média por época.
- Mede tempo total de treinamento.

---

## ✅ 6. Função de Validação

### 🔍 Avaliação do Modelo
```python
with torch.no_grad():
    logps = modelo(img.to(device))
```
- Desativa cálculo de gradientes para acelerar validação.

### 📈 Cálculo de Precisão
```python
probab = list(ps.cpu().numpy()[0])
etiqueta_pred = probab.index(max(probab))
```
- Converte saída para probabilidades.
- Compara previsão com etiqueta real.

### 📋 Resultado Final
```python
print("Precisão do modelo - {}%".format(...))
```
- Exibe a acurácia do modelo sobre o conjunto de validação.

---

## 🖥️ 7. Execução do Modelo

### 🚀 Inicialização
```python
modelo = Modelo()
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
modelo.to(device)
```
- Usa GPU se disponível.
- Move o modelo para o dispositivo apropriado.

