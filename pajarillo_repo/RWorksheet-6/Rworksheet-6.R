library(ggplot2)
library(dplyr)

data(mpg)

df <- as.data.frame(mpg)
df

View(mpg)



#1. How many columns are in mpg dataset? How about the number of rows? Show the codes and its result.
mpg_dataset <- glimpse(df)

# There are 11 columns and 234 rows in mpg dataset 

#2. Which manufacturer has the most models in this data set? Which model has the most variations? Ans: dogde 
  
mf <- mpg_dataset %>% 
  group_by(manufacturer, model) %>% tally(sort = TRUE)
mf
View(mf)
   #a. Group the manufacturers and find the unique models. Copy the codes and result.
unique_model <- mpg_dataset %>% group_by(manufacturer, model) %>% distinct(model) %>% count()
unique_model

colnames(unique_model) <- c("Manufacturer","Model" ,"Counts")
unique_model

#b. Graph the result by using plot() and ggplot(). Write the codes and its result.
plot(unique_model)
ggplot(unique_model, aes(Manufacturer, Model)) + geom_point()
      

#3. Same dataset will be used. You are going to show the relationship of the model and the manufacturer.


#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(df, aes(model, manufacturer)) + geom_point()
  
#b. For you, is it useful? If not, how could you modify the data to make it more informative?
 #  For me it is not quite useful. I think it is much more easy to understand data and more informative if it use the bar graph with the use of legend and not the point


#4. Using the pipe (%>%), group the model and get the number of cars per model. Show codes and its result.


car_per_model <- mpg_dataset %>% group_by(model) %>% count()
car_per_model


colnames(car_per_model) <- c("Model", "Counts")
car_per_model

#a. Plot using the geom_bar() + coord_flip() just like what is shown below. Show codes and its result.

qplot(model,data = df, 
      main = "Number of Cars per Model",
      xlab = "Model",
      ylab = "Number of Cars", geom = "bar", fill = manufacturer) + coord_flip()


#b. Use only the top 20 observations. Show code and results.
top20 <- car_per_model[1:20,] %>% top_n(2)
top20

ggplot(top20,aes(x = Model, y = Counts)) + geom_bar(stat = "Identity") +coord_flip()


#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement”.

#a. Show the codes and its result.
ggplot(data = mpg_dataset , mapping = aes(x = displ, y = cyl, main = "Relationship between No of Cylinders and  Engine Displacement")) + geom_point(mapping=aes(colour = "engine displacement")) 


#b. How would you describe its relationship?

    #Answer: The scattered plot show where the engine displacement clustered

#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).
#Plot using the geom_tile() where the number of observations for class be used as afill for aesthetics.

#a. Show the codes and its result for the narrative in #6.
ggplot(data = mpg_dataset, mapping = aes(x = drv, y = class)) +
  geom_tile(aes(fill=class))

#b. Interpret the result.
    #Answer: In this plot there are a lot of missing tiles maybe because of the unobserved class.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
# As what I have notice the code 1 is not color blue even if you put the the  color blue while in the code 2 is correct and it show the blue color. The diffences between the 2 code is that the colour. The colour() must inside the parenthesis or belong inside the mapping() argument not in aes()

#• Code #1
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

             
#Code #2
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")


#8. Try to run the command ?mpg. What is the result of this command?
             
             
  #a. Which variables from mpg dataset are categorical?
             con_varb <-?mpg
             con_varb           
             
  # b. Which are continuous variables?
             #The list of the continuous variables in mpg are: displ,year,cyl,cty 
             
  
#c. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon). Mapped it with a continuous variable you have identified in #5-b. What is it result? Why it produced such output?          
ggplot(mpg, aes(x = cty, y = hwy, colour = displ)) + geom_point()

#9. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) using geom_point(). Add a trend line over the existing plot using geom_smooth() with se = FALSE. Default method is “loess”.             
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE)
 
#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set these = FALSE to remove the confidence interval and method = lm to check for linear modeling.
             
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(se = FALSE, method = lm)         
