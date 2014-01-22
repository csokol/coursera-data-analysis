library(splines)
library(tree)

set.seed(53535)
rmse <- function(obs, pred) sqrt(mean((obs-pred)^2))
xValues = seq(0,2*pi,length=100)
yValues = rnorm(100) + sin(xValues)

splines = c()
lms = c()
for (i in 1:10) {
    ns1 <- ns(xValues, df=i)
    l <- lm(yValues ~ ns1)
    lms = append(lms, l)
    err = rmse(l$fitted.values, yValues)
    print("#####")
    print(i)
    print(err)
}

set.seed(7363)
data(Cars93,package="MASS")

idx = sample(seq(1,93), replace=T)
s1 = Cars93[idx,] 
t1 = tree(DriveTrain ~ Price + Type, data=s1)

idx = sample(seq(1,93), replace=T)
s2 = Cars93[idx,] 
t2 = tree(DriveTrain ~ Price + Type, data=s2)

idx = sample(seq(1,93), replace=T)
s3 = Cars93[idx,] 
t3 = tree(DriveTrain ~ Price + Type, data=s3)


library(ElemStatLearn)
library(randomForest)

data(vowel.train)
data(vowel.test) 
vowel.test$y = as.factor(vowel.test$y)
vowel.train$y = as.factor(vowel.train$y)

set.seed(33833)

forest <- randomForest(y ~ . - y, data = vowel.test)
svm1 <- svm(y ~ . - y, data = vowel.test)



