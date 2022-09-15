file = read.csv("Breast_cancer_data.csv")
print(file)

sample <- sample(c(TRUE, FALSE), nrow(file), replace=TRUE, prob=c(0.7,0.3))
train <- file[sample, ]
test <- file[!sample, ] 
model <- glm(mean_texture~mean_smoothness+mean_area, data=train)
summary(model)

predict = predict(model , test)
table(test$mean_texture, predict)



