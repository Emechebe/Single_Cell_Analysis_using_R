
R version 3.1.1 (2014-07-10) -- "Sock it to Me"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin10.8.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> setwd("~/Desktop/t-SNE 151124")
#Load library
> library(tsne)
#Loading data
> mydata <- read.table("CombinedCells_zscores151106.csv", header=TRUE, sep=",")
> mydata2 <- mydata[,-1]
# t-sne function 
> x <- 0
> epc <- function(x) {
+     x <<- x + 1
+     filename <- paste("d:\\plot", x, "jpg", sep=".")
+     cat("> Plotting TSNE to ", filename, " ")
+     
+     # plot to d:\\plot.x.jpg file of 2400x1800 dimension
+     jpeg(filename, width=2400, height=1800)
+     
+     plot(x, t='n', main="T-SNE")
+     text(x, labels=rownames(mydata))
+     dev.off()
+ }
# Running the tsne
> tsne_data <- tsne(mydata2, k=5, epoch_callback=epc, max_iter=500, epoch=100)

#K means clustering

> kClust <- kmeans(tsne_data, center =10)

#Plotting the tsne data
> plot(tsne_data, col=kClust$cluster)

#I wanted to also have a 3D plot.So I loaded rgl and plot3D required for 3D
> library(rgl)
> library(plot3D)
Warning message:
package ‘plot3D’ was built under R version 3.1.2 


> image(z=t(1:10),col=rainbow(kClust$cluster))
      
> image(z=t(1:10),col=rainbow(10))
> image(z=t(1:10),col=rainbow(kClust$cluster))
> tsNE1_2_3 = data.frame(x=tsne_data[,1],y=tsne_data[,2],tsne_data=DM[,3])
Error in data.frame(x = tsne_data[, 1], y = tsne_data[, 2], tsne_data = DM[,  : 
  object 'DM' not found
> tsNE1_2_3 = data.frame(x=tsne_data[,1],y=tsne_data[,2],z=tsne_data[,3])
> open3d()
glX 
  1 
> colors = rainbow(kClust$cluster)
> plot3d(tsNE1_2_3,col=colors[10],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
> numClusters = 6
> numClusters = 10
> image(z=t(1:10),col=rainbow(numClusters)) 
> kClust <- kmeans(tsne_data, numClusters)
> KM <- kmeans(tsne_data, numClusters)
> plot3d(tsNE1_2_3,col=colors[KM$cluster],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
> outData = data.frame(cellID = rawData$X,cluster=KM$cluster)
Error in data.frame(cellID = rawData$X, cluster = KM$cluster) : 
  object 'rawData' not found
> write.csv(KM$numClusters, 'clusters_result.csv')
> kClust <- kmeans(tsne_data, center =10)
> plot(tsne_data, col=kClust$cluster)

> kClust$size
 [1]  95 156  64  68  73 123  56 199 124 158
> numClusters
[1] 10
> kClust <- kmeans(tsne_data, numClusters)
    
> kClust <- kmeans(tsne_data, numClusters)
> plot3d(tsNE1_2_3,col=colors[KClust$cluster],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
Error in f(...) : object 'KClust' not found
> plot3d(tsNE1_2_3,col=colors[kClust$cluster],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
> plot(tsne_data, col=kClust$cluster)
> write.csv(kClust$cluster, 'clusters_results.csv')
> tsNE1_2_3 = data.frame(x=tsne_data[,1],y=tsne_data[,2],z=tsne_data[,3])
> open3d()
glX 
  2 
> colors = rainbow(kClust$cluster)
> plot3d(tsNE1_2_3,col=colors[kClust$cluster],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
> tsne1_2 = data.frame(x=tsne_data[,1],y=tsne_data[,2])
> tsne1_3 = data.frame(x=tsne_data[,1],y=tsne_data[,3])
> tsne1_4 = data.frame(x=tsne_data[,1],y=tsne_data[,4])
> tsne1_5 = data.frame(x=tsne_data[,1],y=tsne_data[,5])
> tsne2_3 = data.frame(x=tsne_data[,2],y=tsne_data[,3])
> tsne2_4 = data.frame(x=tsne_data[,2],y=tsne_data[,4])
> tsne2_5 = data.frame(x=tsne_data[,2],y=tsne_data[,5])
> tsne3_4 = data.frame(x=tsne_data[,3],y=tsne_data[,4])
> tsne3_5 = data.frame(x=tsne_data[,3],y=tsne_data[,5])
> tsne4_5 = data.frame(x=tsne_data[,4],y=tsne_data[,5])
> plot(tsne1_2, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 2')
> plot(tsne1_3, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 3')
> plot(tsne1_4, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 4')
> plot(tsne1_5, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 5')
> plot(tsne2_3, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 3')
> plot(tsne2_4, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 4')
> plot(tsne2_5, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 5')
> plot(tsne3_4, col=kClust$cluster, pch=19, xlab ='Dimension 3', ylab='Dimension 4')
> plot(tsne3_5, col=kClust$cluster, pch=19, xlab ='Dimension 3', ylab='Dimension 5')
> plot(tsne4_5, col=kClust$cluster, pch=19, xlab ='Dimension 4', ylab='Dimension 5')
> numClusters = 12
> kClust <- kmeans(tsne_data, numClusters)
> kClust <- kmeans(tsne_data, numClusters)
> plot(tsne_data, col=kClust$cluster)
    
> tsNE1_2_3 = data.frame(x=tsne_data[,1],y=tsne_data[,2],z=tsne_data[,3])
> open3d()
glX 
  3 
> colors = rainbow(kClust$cluster)
> plot3d(tsNE1_2_3,col=colors[kClust$cluster],xlab="DM1",ylab="DM2",zlab="DM3",size=.4,type="s")
> tsne1_2 = data.frame(x=tsne_data[,1],y=tsne_data[,2])
> tsne1_3 = data.frame(x=tsne_data[,1],y=tsne_data[,3])
> tsne1_4 = data.frame(x=tsne_data[,1],y=tsne_data[,4])
> tsne1_5 = data.frame(x=tsne_data[,1],y=tsne_data[,5])
> tsne2_3 = data.frame(x=tsne_data[,2],y=tsne_data[,3])
> tsne2_4 = data.frame(x=tsne_data[,2],y=tsne_data[,4])
> tsne2_5 = data.frame(x=tsne_data[,2],y=tsne_data[,5])
> tsne3_4 = data.frame(x=tsne_data[,3],y=tsne_data[,4])
> tsne3_5 = data.frame(x=tsne_data[,3],y=tsne_data[,5])
> tsne4_5 = data.frame(x=tsne_data[,4],y=tsne_data[,5])
> plot(tsne1_2, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 2')
> plot(tsne1_3, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 3')
> plot(tsne1_4, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 4')
> plot(tsne1_5, col=kClust$cluster, pch=19, xlab ='Dimension 1', ylab='Dimension 5')
> plot(tsne2_3, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 3')
> plot(tsne2_4, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 4')
> plot(tsne2_5, col=kClust$cluster, pch=19, xlab ='Dimension 2', ylab='Dimension 5')
> plot(tsne3_4, col=kClust$cluster, pch=19, xlab ='Dimension 3', ylab='Dimension 4')
> plot(tsne3_5, col=kClust$cluster, pch=19, xlab ='Dimension 3', ylab='Dimension 5')
> plot(tsne4_5, col=kClust$cluster, pch=19, xlab ='Dimension 4', ylab='Dimension 5')
> write.csv(kClust$cluster, 'clusters12_results.csv')
> savehistory("~/Desktop/t-SNE 151124/Rscript.Rhistory")

#Note: I always have a problem copying and pasting the epc <- function for t-SNE. It does not run when I copy and paste. I always have to go back to the original site that has the code and copy it from there: http://www.codeproject.com/Tips/788739/Visualization-of-High-Dimensional-Data-using-t-SNE.

