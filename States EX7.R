
for (i in 1:ncol(newswiss)) {
  newswiss["Total",i]=sum(newswiss[1:7,i])  
  print (i) 
  
}



for (i in 1:nrow(newswiss)) {
  newswiss[i,"POE"]=newswiss[i,3]/newswiss[8,3]  
  print (i) 
  
}

NewStates = data.frame(index=c(1:50))
NewStates$abb = state.abb
NewStates$area = state.area
NewStates$division = state.division
NewStates