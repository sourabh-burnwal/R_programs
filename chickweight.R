  data("ChickWeight")
  c_time <- ChickWeight$Time
  c_weight <- ChickWeight$weight
  print(c_time)
  print(c_weight)
  plot(c_time,c_weight,main="time vs weight",xlab="Chicken time",ylab="Chicken weight",pch=20)
  print(cor(c_time,c_weight))
  hist(c_weight)