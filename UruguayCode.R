##############################

# Autores
# Bernardo Stocco Kruschewsky Whehaibe
# Henry Dem�trio

# Data de cria��o: 15/03/2022

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


# Calculando os graus dos v�rtices do grafo.

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


# Calculando a proximidade dos v�rtices do grafo.

proximidade <- closeness(grafo1)

proximidade

1/proximidade


# Executando o histograma da proximidade dos v�rtices.

hist(proximidade)


# Calculando a maior proximidade

maiorProximidade <- max (proximidade)

maiorProximidade


# Calculando a menor proximidade

menorProximidade <- min (proximidade)

menorProximidade


# Indetificando qual v�rtice pertence a qual proximidade

which (proximidade == proximidade)


# Calculando as intermedia��es dos v�rtices do grafo.

intermediacaoVertices <- betweenness(grafo1)

intermediacaoVertices


# Executando o histograma das intermedia��es dos v�rtices.

hist(intermediacaoVertices)


# Calculando a maior intermedia��o dos v�rtices do grafo.

maiorIntermediacaoVertices <- max (intermediacaoVertices)

maiorIntermediacaoVertices


# Calculando a menor intermedia��o dos v�rtices do grafo.

menorIntermediacaoVertices <- min (intermediacaoVertices)

menorIntermediacaoVertices


# Calculando as intermedia��es (betweenes) das arestas do grafo.

intermediacaoArestas = edge.betweenness(grafo1)

intermediacaoArestas


# Executando o histograma das intermedia��es dos v�rtices.

hist(intermediacaoArestas)


# Calculando a maior proximidade

maiorIntermediacaoArestas <- max (intermediacaoArestas)

maiorIntermediacao


# Calculando a menor proximidade

menorIntermediacaoArestas <- min (intermediacaoArestas)

menorIntermediacaoArestas


# Indetificando qual v�rtice pertence a qual proximidade

which (intermediacoes == intermediacoes)


# Calculando as dist�ncias dos v�rtices do grafo.

distancias <- distances(grafo1)

distancias


# Executando o histograma das dist�ncias dos v�rtices.

hist(distancias)


# Calculando a maior proximidade

maiorDistancia <-max (distancias)

maiorDistancia


# Calculando a menor proximidade

menorDistancia <-min (distancias)

menorDistancia


# Indetificando qual v�rtice pertence a qual proximidade

which (distancias == distancias)


# Calculando o di�metro dos v�rtices do grafo 

get_diameter(grafo1)

diametro <- get_diameter(grafo1)

diametro


# Executando o histograma do di�metro dos v�rtices.

hist(diametro)





