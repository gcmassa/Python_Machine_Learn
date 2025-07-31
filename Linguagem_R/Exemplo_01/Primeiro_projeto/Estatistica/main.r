# Criando um Vetor
x <- c(12, 2, 2, 4.2, 18, 2, 54, -21, 8, -5)
#x <- c(1,7,4,4.2,19,2,20,-21,48,-4)

# criando uma função de modal, pois R não possui uma função nativa, como é para média [mean()] e mediana [median()]

moda <- function(valor) {
    ux <- unique(valor)
    ux[which.max(tabulate(match(valor, ux)))]
}

moda_mult <- function(valor) {
    freq <- table(valor)
    moda_valores <- names(freq)[freq == max(freq)]
    return(as.numeric(moda_valores))
}

result.moda_mult <- moda_mult(x) # tirando a moda

print(result.moda_mult)

result.moda <- moda(x) # tirando a moda

print(result.moda) 

result.mean <- mean(x) # tirando a média

print(result.mean)

median.result <- median(x) # tirando a mediana

print(median.result)

print(((20 + 7)/3)^2)