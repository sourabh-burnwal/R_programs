#finding the conditional probability of winning in Monty-hall game provided the user switches
#@author: sourabh-burnwal

cnt<- c()
montyhall<-function(num){
  for(i in 1:num){
    behind<- sample(c(0,0,1)) #1 denotes the car, 0's denote sheeps
    doors<- c(1,2,3) #numbering the doors
    user<- sample(doors,size=1) #randomly selecting a door
    car<- which((behind&doors)=="TRUE")
    if(user==car){ #if the user selects the door with car
      cnt<-append(cnt,0) #user loses
    }else{ #if the user selects the doors without car
      cnt<-append(cnt,1) #user wins
    }
  }
  return(cnt)
}

temp= montyhall(10000) #10000 trials
prob_wins<- (sum(temp==1))/10000 #finding the probability of wins 
print(prob_wins)
