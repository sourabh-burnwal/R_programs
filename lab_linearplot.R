lin_reg<-function(a,x,sd){
  for(i in 0:length(x)){
    y[i]= rnorm(1,mean= a*x[i],sd=1)
    return(y)
  }
}

e= rnorm(1,mean=0,sd=1)
x= sample(c(1:100),replace=TRUE)
a=1
sd=1
y= lin_reg(a,x,sd)
print(x)
print(y)
plot(x,y,col="red")

