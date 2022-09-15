X = c(6, 7, 7, 8, 10, 10, 11, 12, 14, 15, 16)
Y = c(55, 40, 50, 41, 35, 28, 38, 32, 28, 18, 13)
my_data = data.frame(
  X = c(6, 7, 7, 8, 10, 10, 11, 12, 14, 15, 16) ,
  Y = c(55, 40, 50, 41, 35, 28, 38, 32, 28, 18, 13)
)

corr = cor(X,Y,method = "pearson")
cat("pearson correlation coefficient is :", corr)

library(ggplot2)

ggplot(my_data,aes(X,Y))+geom_point()+geom_smooth(method='lm')
