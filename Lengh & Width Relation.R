#sepal Lengh & Width Relation

x <- c(1.4,1.4,4.3,1.5,1.4,1.7,1.4,1.5,1.5)
y <- c(0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1)

x <- iris$Sepal.Length
y <- iris$Sepal.Width
relation <- lm(y~x)

print(relation)

print(summary(relation))

a <- data.frame(x = 2.5)

result <-  predict(relation,a)
print(result)

plot(y,x,col = "Green",main = "SEPAL (Length & Width Regression )",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Petal Length ",ylab = "Petal Width")

-----------------------
  
#petal Lengh & Width Relation 

x<- iris$Petal.Length
y<- iris$Petal.Width

relation <- lm(y~x) 
print(relation)
print(summary(relation))

a <- data.frame(x = 2.7)  
result <-  predict(relation,a)
print(result)

plot(y,x,col = "red",main = "PETAL (Length & Width Regression )",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Petal Width ",ylab = "Petal Length")
--------------------
  
  #petal Length & sepal Length Relation 
  
  x<- iris$Petal.Length
y<- iris$Sepal.Length
relation <- lm(y~x) 
print(relation)
print(summary(relation)) 
a <- data.frame(x = 50)  
result <-  predict(relation,a)
print(result)

plot(y,x,col = "purple",main = "PETAL Length & SEPAL Length Regression)",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Petal Lenght ",ylab = "sepal Length")
