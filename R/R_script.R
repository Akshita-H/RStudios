library(usethis)
use_git()
use_github()
getwd()

#Example of matrix
mat <- matrix(1:100,nrow=10)
mat
mat <- matrix(1:10,nrow=5)
mat

#Example of vector
vec <- 1:100
vec
vec <- 10:100
vec[10]
letters <- c("A","B","C","D","E")
letters
letters <- c("A","B","C","D","E")
letters[c(1,3)]
letters[-c(1,3)]

#Example of Char Vector
letters <- c("A","B","C","D","E")
letters[-c(1,3,5)]
ToExclude <- c("A","B","E")
ToExclude %in% letters
meta <- c("A","B","C","D","E")
letters[-c(1,3,5)]
rnaseq <- c("A","c","F")
View(mat)
mat
mat[5,5]
mat [5,c(1:10)]
View(mat)

#Naming columns
Sample <- c("Control","Experiment")
colnames(mat) <- Sample
mat
mat[5,]
mat[,"Control"]

#num
num <- 1:100
typeof(num)
#if you want after 4 values
seqofnum <-seq(from=1, by=4, to=100)
seqofnum
seqofnum <-seq(from=1, to=10, length.out=100)
seqofnum
mat[3,1] ="true"
mat

library(usethis)
use_git()
