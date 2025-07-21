# Estrutura condicional Simples

soma = 3

print(f'A soma é: {soma}')

if (soma > 0):
    print('A soma é maior que zero')
else:
    print('A soma é menor que zero')

print("=" * 100) #quebra

numero1 = 2
numero2 = 3

print(f'Número 1: {numero1}, Número 2: {numero2}')

if (numero1 == numero2):
    print('Os valores são iguais')
else:
    print('Os valores são diferentes')

print("=" * 100) #quebra

# Estrutura condicional Aninhada


if soma > 0:
    print('Soma é maior que zero')
elif soma == 0:
    print('Soma é igual a zero')
else:
    print('Soma é menor que zero')