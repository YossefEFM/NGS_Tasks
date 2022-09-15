install.packages("moderndive")
install.packages("gapminder")
install.packages("dplyr")
#-----------------------------------------------------
library(moderndive)
str(house_prices)
#-----------------------------------------------------
library(ggplot2)
ggplot(house_prices, aes( x= sqft_living))+
geom_histogram(binwidth = 1000)+
labs(x = "Size (sq.feet)", y = "count")
#------------------------------------------------------
library(dplyr)
house_prices <- house_prices %>%
  mutate(house_prices_2 = log10(sqft_living))
#-----------------------------------------------------
ggplot(house_prices, aes( x= house_prices_2))+
  geom_histogram(binwidth = 0.25)+
  labs(x = "Size (sq.feet)", y = "count")
#-----------------------------------------------------
house_prices <- house_prices %>%
  mutate(log10_price = log10(price))
house_prices <- house_prices %>%
  mutate(log10_size = log10(sqft_living))

filter(house_prices, bedrooms<20)
ggplot(house_prices, aes(x=log10_price , y= bedrooms ))+
  geom_point()+
  geom_smooth(method = "lm")

model <- lm(data = house_prices,log10_price~bedrooms)
get_regression_table(model)
#---------------------------------------------------
data1 = data.frame(c( bedrooms =3 ,sqft_living =1000))
predict(model, newdata =data.frame( bedrooms =c(3) ,sqft_living =c(1000)))

