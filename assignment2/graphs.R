load("data/samsungData.rda")

samsungData = data.frame(samsungData)

png("plots.png", width=1600, height=1600)

par(mfrow=c(3,3))

boxplot(samsungData$tGravityAcc.mean...X ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.mean...X")
boxplot(samsungData$tGravityAcc.mean...X ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.energy...X")
boxplot(samsungData$tGravityAcc.min...Y ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.min...Y")
boxplot(samsungData$tGravityAcc.min...X ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.min...X")
boxplot(samsungData$tGravityAcc.max...X ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.max...X")
boxplot(samsungData$angle.Y.gravityMean. ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("angle.Y.gravityMean.")
boxplot(samsungData$angle.X.gravityMean. ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("angle.X.gravityMean.")
boxplot(samsungData$tGravityAcc.max...Y ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.max...Y")
boxplot(samsungData$tGravityAcc.mean...Y ~ samsungData$activity, col=c(1,2,3,4,5,6))
title("tGravityAcc.mean...Y")

dev.off()

