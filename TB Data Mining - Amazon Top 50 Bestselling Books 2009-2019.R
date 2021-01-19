lokasi_kerja <- "/home/kholifatussiddiq/TB Data Mining - Amazon Top 50 Bestselling Books 2009-2019"
getwd()
setwd(lokasi_kerja)
getwd()
install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
dataset <- read.csv("bestsellers with categories.csv", sep=",")
head(dataset)
cl <- kmeans(dataset[3:4], 3)
cl
cl$size
cl$centers
plot(dataset[3:4], col = cl$cluster)
col = cl$cluster
points(cl$centers, col = 3:5, pch = 8, cex =2)
install.packages("cluster")
install.packages("magrittr")
library("cluster")
res.hc <- dataset[3:4] %>% scale() %>% dist(method = "euclidean") %>% hclust(method = "ward.D2")
res.hc
head(res.hc)
fviz_dend(res.hc, k = 3,
          cex = 0.5,
          k_colors = c("#2E9FDF", "#FC4E07", "#00AFBB"),
          color_labels_by_k = TRUE,
          rect = TRUE
)
?fviz_dend
