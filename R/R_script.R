library(usethis)
use_git()
use_github()
getwd()
#Example of matrix
mat <- matrix(1:100,nrow=10)
mat
mat <- matrix(1:100,nrow=5)
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
library(usethis)
use_git()
use_github()
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)
use_github()
