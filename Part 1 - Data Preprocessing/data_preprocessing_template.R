setwd("C:/Users/gary/Dropbox/Rstudio/R data files/SuperDataScience/Part 1 - Data Preprocessing/")

# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')


#replace missing values with mean
dataset$Age=ifelse(is.na(dataset$Age),mean(na.omit(dataset$Age)),dataset$Age)
dataset$Salary=ifelse(is.na(dataset$Salary),mean(na.omit(dataset$Salary)),dataset$Salary)


# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)