q4 = read.csv("quiz3question4.csv")

plot(q4$x, q4$y)

frame = data.frame(q4$x, q4$y)
res = kmeans(frame, centers=2, nstart=100)

plot(q4$x, q4$y, col=res$cluster)
points(res$centers, col=1:3, pch=3, cex=3, lwd=3)
