##############################

# Autores
# Bernardo Stocco Kruschewsky Whehaibe
# Henry Demétrio

# Data de criação: 15/03/2022

##############################

# Instalando o pacote e a biblioteca do 'igraph'.

install.packages('igraph')

library(igraph)


# Executando a matriz em formato CSV.

matriz1 <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

matriz1

matriz1 <- as.matrix(matriz1)


# Executando o grafo

grafo1 <- graph.adjacency(matriz1, mode='undirected', weighted=TRUE)

plot(grafo1)

plot(grafo1, edge.label = round(E(grafo1)$weight,3))


# Plotando o grafo utilizando o comando 'tkplot'.

tkplot(grafo1)


# Calculando os graus dos vértices do grafo.

degree(grafo1)

graus <- degree(grafo1)

graus


# Calculando o histograma dos graus

hist(graus)


# Calculando o maior grau

maiorGrau <- max (graus)

maiorGrau


# Calculando o menor grau

menorGrau <- min (graus)

menorGrau


which (graus == graus)


# Calculando a proximidade dos vértices do grafo.

proximidade <- closeness(grafo1)

proximidade

1/proximidade


# Executando o histograma da proximidade dos vértices.

hist(proximidade)


# Calculando a maior proximidade

maiorProximidade <- max (proximidade)

maiorProximidade


# Calculando a menor proximidade

menorProximidade <- min (proximidade)

menorProximidade


# Indetificando qual vértice pertence a qual proximidade

which (proximidade == proximidade)


# Calculando as intermediações dos vértices do grafo.

intermediacaoVertices <- betweenness(grafo1)

intermediacaoVertices


# Executando o histograma das intermediações dos vértices.

hist(intermediacaoVertices)


# Calculando a maior intermediação dos vértices do grafo.

maiorIntermediacaoVertices <- max (intermediacaoVertices)

maiorIntermediacaoVertices


# Calculando a menor intermediação dos vértices do grafo.

menorIntermediacaoVertices <- min (intermediacaoVertices)

menorIntermediacaoVertices


# Calculando as intermediações (betweenes) das arestas do grafo.

intermediacaoArestas = edge.betweenness(grafo1)

intermediacaoArestas


# Executando o histograma das intermediações dos vértices.

hist(intermediacaoArestas)


# Calculando a maior proximidade

maiorIntermediacaoArestas <- max (intermediacaoArestas)

maiorIntermediacao


# Calculando a menor proximidade

menorIntermediacaoArestas <- min (intermediacaoArestas)

menorIntermediacaoArestas


# Indetificando qual vértice pertence a qual proximidade

which (intermediacoes == intermediacoes)


# Calculando as distâncias dos vértices do grafo.

distancias <- distances(grafo1)

distancias


# Executando o histograma das distâncias dos vértices.

hist(distancias)


# Calculando a maior proximidade

maiorDistancia <-max (distancias)

maiorDistancia


# Calculando a menor proximidade

menorDistancia <-min (distancias)

menorDistancia


# Indetificando qual vértice pertence a qual proximidade

which (distancias == distancias)


# Calculando o diâmetro dos vértices do grafo 

get_diameter(grafo1)

diametro <- get_diameter(grafo1)

diametro


# Executando o histograma do diâmetro dos vértices.

hist(diametro)





