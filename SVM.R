library(e1071)
library(raster)
library(tidyverse)
library(tidymodels)
data_original <- read.csv("datos.csv")
data_original <- data_original[-1]

for (i in c(1:(ncol(data_original) - 1))) {
    data <- data_original
    data$Default <- factor(data$Default, level = c(0, 1))
    data_split <- data %>% initial_split(strata = Default)
    data_train <- training(data_split)
    data_test <- testing(data_split)
    data_train[-ncol(data_train)]<-scale(data_train[-ncol(data_train)])
    data_test[-ncol(data_train)]<-scale(data_train[-ncol(data_test)])
    clasiffy <- svm(
        formula = Default ~ .,
        data = data_train,
        type = "C-classification",
        cost = 96
    )

    y_predict <- predict(clasiffy, newdata = data_test[-c(ncol(data))])
    matrix_confussion <- table(y_predict,data_test[, ncol(data)])
    print(matrix_confussion)
}
