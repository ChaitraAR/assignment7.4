##Logistic Regression 

##Reading the data

dataset= read.csv('blogData_train.csv')
dataset = dataset[,3:5]

##Splitting the dataset

library(caTools)
set.seed(123)

split = subset(dataset, splitRation = 0.75)
train_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#fitting logistic regression to the training set 

clssifier = glm(formula = dataset ~.,
                family = binomial,
                data = train_set)
