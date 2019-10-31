#simulation of Monty-hall game
#@author: sourabh-burnwal

behind<- sample(c(0,0,1)) #1 denotes the car, 0's denote the sheeps
doors<- c(1,2,3) #numbering the doors
user<- sample(doors,size=1) #randomly selecting a choice
car<- which((behind&doors)=="TRUE") #finding the door having the car
if(user==car){ #user selects the door having the car
  door_new<- setdiff(doors,user) #the remaining doors
  if(sample(c(0,1),size=1)==1){ #if user switches
    print("loses")
  }
  else{ #if user doesn't switch
    print("wins")
  }
}else{ #user selects other two doors
  door_new<- setdiff(doors,user) #remaining doors
  door_final<- setdiff(door_new,car)
  if(sample(c(0,1),size=1)==1){ #if user switches
    print("wins")
  }
  else{ #if user doesn't switch
    print("loses")
  }
}