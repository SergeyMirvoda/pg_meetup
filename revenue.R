#Загрузка данных
data <- read.csv("~/ColibriStat/corr_data.csv",sep = ";",header = TRUE)
cor(data$Number.of.children.who.walked.by, data$Revenue)
cor(data$temperature, data$Revenue)
attach(data)
#Анализ
plot(Revenue ~ temperature) #Построим график для имеющихся данных
result <- lm(Revenue ~ temperature) #Посчитаем регрессию при помощи линейной модели
result.coefs <- coef(result) #Извлечём информацию о коэффициентах и сохраним её в переменную
#Подставим коэффициенты в формулу линейной модели f(x) = kx + b и нарисуем 
abline(result.coefs["(Intercept)"], result.coefs["temperature"], col='red')
summary(result)
