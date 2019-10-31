#finding mode manually from the scratch
#@author: sourabh-burnwal

c<-sample(1:30,replace=T)
'%nin%'= Negate('%in%') #making a function of not-in
flag<-rep('true',30) #initially none of the elements been counted
new<- c()
count<- c()
for(i in 1:30){
  if(flag[i]=='true'){
    if(c[i] %in% new){
      ind= match(c[i],new)
      count[ind]= count[ind]+1 #increasing the count
    }
    else if(c[i] %nin% new){ #if not in new list
      new<- append(new,c[i]) #change the count to 1
      flag[i]='false' #mark this counted
      count<- append(count,1)
    }
  } 
}
mode<-new[c(which(count %in% max(count)))] #finding the max count which will be the mode
print(c)
print(new)
print(count)
print(mode)