#1.

# a. Write the codes.
Respondents <- (1:20)
Respondents
sex <- c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2)
sex

father_ocpt <- c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1)
father_ocpt

person_home <- c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6)
person_home


sibling <- c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2)
sibling

house <- c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
house

A <- data.frame(Respondents,sex,father_ocpt,person_home,sibling,house)
A

summary(A)

#c. Is the mean number of siblings attending is 5?
# no


#d. Extract the 1st two rows and then all the columns using the subsetting functions. Write the codes and its output.
r <- subset(A[1:2, 1:6, drop= FALSE])
r

#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.

r2 <- subset(A [c(3,5), c(2,4)])
r2

#f. Select the variable types of houses then store the vector that results as types_houses. Write the codes.

r3 <- subset(A[c(1:20), c(2,6)])
r3

houses <- rrr
houses

#g. Select only all Males respondent that their father occupation was farmer. Write the codes and its output.

sel <- subset(A[c(1:20), c(2,3)] )
sel
Male <- sel[A$father_ocpt=='1',]
Male


#h. Select only all females respondent that have greater than or equal to 5 number of siblings attending school. Write the codes and its outputs.
sel2 <- subset(A[c(1:20), c(2,5)])
sel2
Female <- sel2[A$sibling>='5',]
Female

#2. Write a R program to create an empty data frame. Using the following codes:
  
df = data.frame(Ints=integer(),
                
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))

#a. Describe the results.
    #It give information of the class of the object.


#3. Interpret the graph

  #Answer: The graph represents that people's negative sentiments each day towards Donald Trump from the date July 14, 2021 to July 21, 2021 are higher than positive and neutral
