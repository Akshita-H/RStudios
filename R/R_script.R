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

#24th July 2026
#while example
i = 1
while(i<10){
  i=i+1
  print(i)
}

i = 0
while(i<10){
  print(paste(i,"before incrementing"))
  i=i+1
  print(paste(i,"after incrementing"))
}

i = 0
while(i<10){
  print(paste(i,"th iteration: before incrementing"))
  i=i+1
  print(paste(i,"th iteration: after incrementing"))
}

i = 0
while(i<10){
  print(paste(i+1,"th iteration: before incrementing"))
  i=i+1
  print(paste(i,"th iteration: after incrementing"))
}

i = 0
while(i<10){
  print(paste(i+1,"th iteration: before incrementing i=", i))
  i=i+1
  print(paste(i,"th iteration: after incrementing i=", i))
}

i = 0
while(i<10){
  if(i+1 == 1)
  print(paste(i+1,"st iteration: before incrementing i=", i))
}
  {if(i+1 == 2)
    print(paste(i+1,"nd iteration: before incrementing i=", i))
}
  i=i+1
  {if(i+1 == 3)
    print(paste(i+1,"rd iteration: before incrementing i=", i))
  }

#while with if-else example
  i = 0
  while (i<10){
    i = i+1
    if(i%%2==0){ #divisibility by 2
      print(paste(i, "is even"))
    }
    else{
      print(paste(i, "is odd"))
    }
  }

  i = 0
  for (i in 1:10){
    #i = i+1
    if(i%%2==0){ #divisibility by 2
      print(paste(i, "is even"))
    }
    else{
      print(paste(i, "is odd"))
    }
  }

  i = 0
  for (i in 1:10){
    #i = i+1
    if((i%%2==0) && (i%%3==0)){
      print(paste(i, "is divisible by 2 & 3"))
    }
    if(i%%2==0){ #divisibility by 2
      print(paste(i, "is divisible by 2"))
    }
    if(i%%3==0){ #divisibility by 2
      print(paste(i, "is divisible by 3"))
    }
  }

#for example
for (data in 1:10){
    print(data)
}

#for with if-else example
  for (data in 1:10){
    if (data < 5){
    print(paste (data, "is accessed & is less than 5"))
    }
    else {
      print(paste( data, "was not accessed"))
    }
  }

  for (data in 1:10){
    if (data < 5){
      print(paste(data, "is accessed & is less than 5"))
    }
    else if (data %% 2==0){
      print(paste(data, " > 5 and is even"))
    }
    else {
      print(paste(data, "is still not accessed"))
    }
}

  for (data in 1:10){
    if (data < 5){
      print(paste(data, "is accessed & is less than 5"))
    }
    if (data %% 2==0){
      print(paste(data, " > 5 and is even"))
    }
    else {
      print(paste(data, "is still not accessed"))
    }
  }

#functions example
#calling the length function
  charnum <- function(argument){
    length(argument)
  }

  charnum(c(6:28))

  vec1 <- seq(1,2,length.out=100)
  numitem <- function(argument){
    length(argument)
  }

  numitem(vec1)

  numchar <- function(argument){
    nchar(argument)
  }
  numchar("dsbfhsfhgshfgsmbfmsdbv")

  num1 <- 1
  num2 <- 2

  power <- function(arg1=0, arg2=1){
    arg1^arg2
  }

  power()
  seq(1,3)
  seq(1)
  power(arg2=num1,arg1=num2)

#27th July 2026
#variable again
a=10
typeof(a)
class(a)
b=c(10,11,12)
class(b)
d=c("college", "students", "Tables")
class(d)
bull=b==d
b==d

#function again
equality <- function(r1,r2){
  r1==r2
}
 equality(b,d)

#required packages
library(tidyverse)
install.packages("tidyverse")
library(tidyverse)
library(ggthemes)
install.packages("stringi")
library(stringi)

install.packages("palmerpenguins")
library(palmerpenguins)
palmerpenguins::penguins
penguins
view(penguins)
glimpse(penguins)

#How to make plots
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
       ) +
  geom_point()

num <- 1:100
squares <- num * num

customdata <- data.frame(cbind(num, squares))
class(customdata)
ggplot(data = customdata,
       mapping = aes(x = num, y = squares)
) +
  geom_point()

customdata <- data.frame(cbind(num, squares))
class(customdata)
ggplot(data = customdata,
       mapping = aes(x = num, y = num)
) +
  geom_point()

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")

#species color
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")

#species shape
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm")

#labels
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind() #for color blindness






