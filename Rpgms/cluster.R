#Kmeans


View(iris)
df=iris
df<-na.omit(df)
df<-scale(df[,1:4])
df
km<-kmeans(df,centers=3)
km
library(factoextra)
fviz_cluster(km,df)
fviz_nbclust(df,kmeans)



View(USArrests)
df1=USArrests
df1<-scale(df1)
km<-kmeans(df1,centers=2)
km
fviz_cluster(km,df1)
fviz_nbclust(df1,kmeans)

#K medoids
library(cluster)
pam(df1,k=3)
fviz_nbclust(df1, pam, method = "wss")
gap_stat <- clusGap(df1,
                    FUN = pam,
                    K.max = 10,
                    B = 50)
fviz_gap_stat(gap_stat)
kmed <- pam(df1, k = 4)
kmed
fviz_cluster(kmed, data = df1)



#Hierarchical clustering
clust <- agnes(df1, method = "ward")
clust
pltree(clust,cex=0.6,hang=1,main="dendogram")
