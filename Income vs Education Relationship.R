data("car")
install.packages("car")
library("car") # Library containing the dataset.
library(ggplot2) # Library to create some nice looking graphs.
library(MASS) # Library for our box-cox transform down the end.

head(Prestige,5)
str(Prestige)
summary(Prestige)

newdata = Prestige[,c(1:2)]
summary(newdata)

qplot(education, data = newdata, geom="histogram", binwidth=1) +
  labs(title = "Historgram of Average Years of Education") +
  labs(x ="Average Years of Education") +
  labs(y = "Frequency") +
  scale_y_continuous(breaks = c(1:20), minor_breaks = NULL) +
  scale_x_continuous(breaks = c(6:16), minor_breaks = NULL) +
  geom_vline(xintercept = mean(newdata$education), show.legend=TRUE, color="red") +
  geom_vline(xintercept = median(newdata$education), show.legend=TRUE, color="blue")


qplot(income, data = newdata, geom="histogram", binwidth=1000) +
  labs(title = "Historgram of Average Income") +
  labs(x ="Average Income") +
  labs(y = "Frequency") +
  scale_y_continuous(breaks = c(1:20), minor_breaks = NULL) +
  scale_x_continuous(breaks = c(0, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 26000), minor_breaks = NULL) +
  geom_vline(xintercept = mean(newdata$income), show.legend=TRUE, color="red") +
  geom_vline(xintercept = median(newdata$income), show.legend=TRUE, color="blue")


qplot(education, income, data = newdata, main = "Relationship between Income and Education") +
  scale_y_continuous(breaks = c(1000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 25000), minor_breaks = NULL) +
  scale_x_continuous(breaks = c(6:16), minor_breaks = NULL)

set.seed(1)
education.c = scale(newdata$education, center=TRUE, scale=FALSE)
names(education.c)[1] = "education.c"
newdata = cbind(newdata, education.c)
mod1 = lm(income ~ education.c, data = newdata)
summary(mod1)

qplot(education.c, income, data = newdata, main = "Relationship between Income and Education") +
  stat_smooth(method="lm", col="red", se=FALSE) +
  scale_y_continuous(breaks = c(1000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 25000), minor_breaks = NULL)


plot(mod1, pch=16, which=1)