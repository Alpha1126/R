
plot(Ship$Class,Ship$Freq, main="Survival Comparison")
abline(lm(class~survived, data = Ship) )


fit <- rpart(Survived ~ Class + Sex + Age + Freq,
             data=Ship,
             method="class")

plot(fit)
text(fit)