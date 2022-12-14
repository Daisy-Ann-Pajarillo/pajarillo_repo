#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet and letters which contains the lowercase letters of the alphabet.
LETTERS <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
"T", "U", "V", "W", "X", "Y", "Z")
LETTERS

letters <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
 "t", "u", "v", "w", "x", "y", "z")
letters

#Based on the above vector LETTERS:
   #A. You need to produce a vector that contains the first 11 letters.
LET <- LETTERS[1:11]
LET

let <- letters[1:11]
let

#B.Produce a vector that contains the odd numbered letters.
LET <- LETTERS[1:26 %% 2 !=0]
LET

let <- letters[1: 26 %% 2 !=0]
let

#C.Produce a vector that contains the vowels
LET1 <-LETTERS[c("A"=1, "E"=5, "I"=9, "O"=15, "U"=21)]
LET1

let1 <- letters[c("a"=1, "e"=5, "i"=9, "o"=15, "u"=21)]
let1

#Based on the above vector letters:
  #D. Produce a vector that contains the last 5 lowercase letters
let2 <- letters[21:26]
let2

#E. Produce a vector that contains letters between 15 to 24 letters in lowercase.
let3 <- letters[15:24]
let3

#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
#The average temperatures in

#a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.


city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city


#b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees. Name the object as temp. Write the R code and its output. Numbers should also follow what is in the instruction

temp <- c(42, 39, 34, 34, 30,27)
temp

#c. Associate the temperature temp with the city by using names() function. What is the R code and its result?

names(temp) <- city
temp

#e. From the answer in d, what is the content of index 5 and index 6? What is its R code?

num <- temp[5:6]
num

#Using Matrices

#2. Create a matrix of one to eight and eleven to fourteen with four columns and three rows. 
#a. What will be the R code for the #2 question and its result?


data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1


#b. Multiply the matrix by two. What is its R code and its result?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
mul <-  data1*2
mul


#c. What is the content of row 2? What is its R code?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

row2 <- c(data1[2,1], data1[2,2], data1[2,3], data1[2,4])
row2


#d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

d <- c(data1[1,3], data1[1,4], data1[2,3], data1[2,4])
d


#e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

e <- c(data1[3,2], data1[3,3])
e


#f. What is the R code is you want to display only the columns 4? What is its output?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

f <- c(data1[1,4], data1[2,4], data1[3,4])
f


#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.???. What is its R code and corresponding output?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

dimnames(data1) <- list(c("isa", "dalawa", "tatlo"), c("uno", "dos", "tres", "quatro"))
data1


#h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?
  
data1 <- matrix(c(1:8, 11:14), nrow= 3, ncol = 4)
data1

newdata <- c(1:8, 11:14)
newdata

data2 <- matrix(c(newdata), nrow = 6, ncol = 2)
data2

dim(data2)


#Using Arrays

#3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1

#a. Create an array for the above numeric values. Each values will be repeated twice What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?
  
A <- c( 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
A

a <- array(rep(A,2), dim = c(2,4,3))
a


#b. How many dimensions do your array have?
 # Answer:  3 dimension


#c. Name the rows as lowercase letters and columns as uppercase letters starting from the A. The array names should be ???1st-Dimensional Array???, ???2nd-Dimentional Array???, and ???3rd-Dimensional Array???. What will be the R codes and its output?

A <- c( 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
A

a <- array(rep(A,2), dim = c(2,4,3))
a


dimnames(a) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimentional Array", "3rd-Dimentional Array"))
a

