#Data(iris)
data_iris <- data.frame(iris)
data_iris

#subset
data3 <- subset(data_iris, Species == 'virginica')
data3

#sepal length
Sep_lgth <- iris$Sepal.Length[101:150]
Sep_lgth

#sepal width
Sep_wdth <- iris$Sepal.Width[101:150]
Sep_wdth

#petal length
Pet_lgth <- iris$Petal.Length[101:150]
Pet_lgth

#petal width
Pet_wdth <- iris$Petal.Width[101:150]
Pet_wdth

#Total mean of virginica
virginica_mean <- mean(c(Sep_lgth, Sep_wdth, Pet_lgth, Pet_wdth))
virginica_mean


#Mean of each Characteristic of virginica
#by each mean of characteristics
sepal_lgth<- mean(Sep_lgth)
sepal_lgth

sepal_wdth<- mean(Sep_wdth)
sepal_wdth

petal_lgth <- mean(Pet_lgth)
petal_lgth

petal_wdth <- mean(Pet_wdth)
petal_wdth

#all means of virginica characteristics in one column and row 
virgi_mean <- (colMeans(data3[,1:4]))
virgi_mean
