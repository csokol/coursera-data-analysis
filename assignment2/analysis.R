library(tree)
library(randomForest)

load("data/samsungData.rda")

set.seed(10293812)

trainingSet = samsungData[samsungData$subject <= 25,] 
trainingSet = data.frame(trainingSet)
trainingSet$activity = as.factor(trainingSet$activity)

testSet = samsungData[samsungData$subject >= 27,]
testSet = data.frame(testSet)
testSet$activity = as.factor(testSet$activity)

forest <- randomForest(activity ~ . -activity, 
                      data = trainingSet, prox=TRUE)
predictions = predict(forest, testSet)
testSetSize = length(predictions)
correctPredictions = predictions == testSet$activity

errors = table(correctPredictions)[1]
misclassRate = errors/testSetSize

plot(forest)
