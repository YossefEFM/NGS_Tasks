height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
body.mass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)

plot(height, body.mass)

data = data.frame(height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175),
                  body.mass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78))
linear = lm(height~body.mass, data= data)
summary(linear)
plot(linear)
abline(lm(height~body.mass))

