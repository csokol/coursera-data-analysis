library(datasets)
data(iris)
irisSubset = iris[,1:4]
res = hclust(dist(irisSubset))
plot(res)
