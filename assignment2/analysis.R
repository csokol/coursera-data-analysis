library(tree)
library(randomForest)

load("data/samsungData.rda")

trainingSet = samsungData[samsungData$subject <= 20,] 
#trainingSet = subset(trainingSet, select=-c(562)) #excluding subject column
trainingSet = data.frame(trainingSet)
trainingSet$activity = as.factor(trainingSet$activity)

testSet = samsungData[samsungData$subject >= 27,]
#testSet = subset(testSet, select=-c(562)) #excluding subject column
testSet = data.frame(testSet)
testSet$activity = as.factor(testSet$activity)

# fBodyAcc.max...
# tGravityAcc.max...
# angle.X.gravityMean.
# fBodyAccMag.max..


#plot(x=trainingSet$angle.X.gravityMean., y=trainingSet$angle.Y.gravityMean., col=as.numeric((trainingSet$activity)), pch=19)
#legend(-0.7,-0.5,legend=unique(trainingSet$activity),col=unique(as.numeric(as.factor(trainingSet$activity))),pch=19)

#plot(x=trainingSet$angle.X.gravityMean., y=trainingSet$angle.Z.gravityMean., col=as.numeric(as.factor(trainingSet$activity)), pch=19)
#legend(-0.7,-0.5,legend=unique(trainingSet$activity),col=unique(as.numeric((trainingSet$activity))),pch=19)

#tree1 <- tree(activity ~ . - activity , data=trainingSet)

tree1 <- randomForest(activity ~ . -activity, data = trainingSet, prox=TRUE)

