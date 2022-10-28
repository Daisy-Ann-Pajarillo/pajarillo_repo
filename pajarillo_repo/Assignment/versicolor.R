#Data(iris)
data_iris <- data.frame(iris)
data_iris

#subset
data2 <- subset(data_iris, Species == 'versicolor')
data2

#sepal length
Slgth <- iris$Sepal.Length[51:100]
Slgth

#sepal width
Swdth <- iris$Sepal.Width[51:100]
Swdth

#petal length
Plgth <- iris$Petal.Length[51:100]
Plgth

#petal width
Pwdth <- iris$Petal.Width[51:100]
Pwdth

#Total mean of versicolor
versicolor_mean <- mean(c(Slgth, Swdth, Plgth, Pwdth))
versicolor_mean


#Mean of each Characteristic of versicolor


#by each mean of characteristics
seplgth<- mean(Slgth)
seplgth

sepwdth<- mean(Swdth)
sepwdth

petlgth <- mean(Plgth)
petlgth

petwdth <- mean(Pwdth)
petwdth

#all means of  versicolor characteristics in one column and rows 
versi_mean <- (colMeans(data2[,1:4]))
versi_mean
