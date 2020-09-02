x= runif(10)
y=runif(10)
fit1 <- lm(x ~ y )
sd2 <- sd(fit1$residuals)

library(ggplot2)

ggplot(data.frame(x,y), aes(x=x,y=y)) + 
  geom_point() + 
  geom_smooth(method="lm")

