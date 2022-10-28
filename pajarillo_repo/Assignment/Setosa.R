#Data(iris)
data_iris <- data.frame(iris)
data_iris

#subset
data1 <- subset(data_iris, Species == 'setosa')
data1



#sepal length
S_lgth <- iris$Sepal.Length[1:50]
S_lgth

#sepal width
S_wdth <- iris$Sepal.Width[1:50]
S_wdth
 
#petal length
P_lgth <- iris$Petal.Length[1:50]
P_lgth

#petal width
P_wdth <- iris$Petal.Width[1:50]
P_wdth

#Total mean of setosa
setosa_mean <- mean(c(S_lgth, S_wdth, P_lgth, P_wdth))
setosa_mean

#Mean of each Characteristic of setosa
sep_lgth<- mean(S_lgth)
sep_lgth

sep_wdth<- mean(S_wdth)
sep_wdth

pet_lgth <- mean(P_lgth)
pet_lgth

pet_wdth <- mean(P_wdth)
pet_wdth

#all means of setosa characteristics in one column and rows 
setosmean <- (colMeans(data1[,1:4]))
setosmean

