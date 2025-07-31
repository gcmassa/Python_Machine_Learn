print("hello world")
# exemplo de atribuição
objeto1 <- 3*3

objeto2 <- 2*2

objeto3 <- objeto1 + objeto2

print(objeto1)
print(objeto2)
print(objeto3)
# exemplo de atribuição onde a liguagem é sensível a maiúsculas e minúsculas
(casa <- "todas as letras são minúsculas")
(CASA <- "Todas as letras são maiúsculas")

print(casa)
print(CASA)

#Exemplo matemático
raio <- 10
espessura <- 1
comprimento <- 70
# calcula o volume do cubo
volume <- pi*(raio - espessura)^2*comprimento
print(volume)

# X < Y -- X > Y -- X == Y -- X != Y -- X => Y -- X =< Y

x <- 10
y <- 20

print(x > y)
print(x < y)

primeira_letra_primeiro_nome <- "G"
primeira_letra_segundo_nome <- "M"

primeira_letra_primeiro_nome == primeira_letra_segundo_nome
print(primeira_letra_primeiro_nome != primeira_letra_segundo_nome)

# Definindo Vetores

(primeiro.vetor1 <- c(1, 3, 5, 9, 10))
(primeiro.vetor2 <- c(1, 4, 5, 8, 22))
(primeiro.vetor3 <- c(primeiro.vetor1, primeiro.vetor2)) # concatenando os dois vetores
print(primeiro.vetor3)
#print(primeiro.vetor)
#print(length(primeiro.vetor))

A <- matrix(c(2, 4, 3, 1, 5, 7),nrow = 2,ncol = 3, byrow = TRUE) # montando uma matriz
B <- matrix(c(2, 5, 3, 1, 5, 12),nrow = 2,ncol = 3, byrow = TRUE)
print(A)
print("X")
print(B)
print("IGUAL  ")
print(A * B)
