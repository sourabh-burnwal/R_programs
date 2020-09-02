mean1<- function(dtset,n){
  mean2 = sum(dtset)/n
  return(mean2)
}

median1<- function(dtset,n){
  dtset_sorted<-sort(dtset)
  median2<- (dtset_sorted[n/2]+dtset_sorted[(n/2)+1])/2
  return(median2)
}

mode1<- function(dtset){
  if(is.numeric(dtset)){
    dt_table<-table(dtset)
    return(as.numeric(names(dt_table)[which.max(dt_table)]))
  }
}

dtset<- sample(1:30,replace=T)
n = length(dtset)
print(dtset)
mean2 = mean1(dtset,n)
print(mean2)
mode2 = mode1(dtset)
print(mode2)
median2 = median1(dtset,n)
print(median2)
