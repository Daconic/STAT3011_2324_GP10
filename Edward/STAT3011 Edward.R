training_data <- read.csv('./data/cs-training.csv')[-1]
library(ggplot2)
library(randomForest)
# For each column heading we replace "-" and convert the heading in lowercase 
cleancolumn <- gsub("-", "", tolower(names(training_data)))
names(training_data) <- cleancolumn

par(mfrow = c(1, 3))

boxplot(training_data$age, horizontal = TRUE, main = "Age Boxplot", xlab = "Age")
outliers_age <- boxplot.stats(training_data$age)$out
points(outliers_age, rep(1, length(outliers_age)), col = "red", pch = 16)

boxplot(training_data$revolvingutilizationofunsecuredlines, horizontal = TRUE, main = "Revolving Utilization Boxplot", xlab = "Revolving Utilization")
outliers_rev <- boxplot.stats(training_data$revolvingutilizationofunsecuredlines)$out
points(outliers_rev, rep(1, length(outliers_rev)), col = "red", pch = 16)

boxplot(training_data$debtratio, horizontal = TRUE, main = "Debt Ratio Boxplot", xlab = "Debt Ratio")
outliers_debt <- boxplot.stats(training_data$debtratio)$out
points(outliers_debt, rep(1, length(outliers_debt)), col = "red", pch = 16)