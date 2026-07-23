library(usethis)
use_git()
use_github()
getwd()

#Different types of data types
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

#Vector examples
vec1 <- 1:10
vec2 <- seq(1,100,10)
vec3 <- seq(1,2, length.out=10)
length(vec1)
length(vec2)
length(vec3)
?cbind

#Another way to use matrix
matrix1 <- cbind(vec1,vec2,vec3)
matrix1
typeof(matrix1)
#Vector
sample <- c("sample1","sample2","sample3","sample4","sample5","sample6","sample7",
            "sample8","sample9","sample10")
#Inside the above vector we'll add data frame
df1 <- cbind(sample, matrix1)
df1
typeof(df1)
df1 <- data.frame(sample, matrix1)
df1
list <- list["a", df1, sample, vec1]
df1[,2]*10
typeof(df1[,1])
typeof(df1[,2])
?read.table
matrix1 <- data.frame(vec1,vec2,vec3)
matrix1
