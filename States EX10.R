
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
NewStates$region = state.region
NewStates$name = state.name

state.x77 = data.frame(index=c(1:50))

data(state.x77)

load(state.x77)
rm(state.x77)

data(state.x77)
load(state.x77)
state.x77
state.x77=as.data.frame(state.x77)

state.x77$abb = NewStates$abb
state.x77$Division = NewStates$division
state.x77$Region = NewStates$region

state.x77$Division = NULL


state.x77$abb = NewStates$abb
state.x77$abb = NewStates$abb
state.x77$Division = NewStates$division
state.x77$Region = NewStates$region
state.x77$Division = NULL
state.x77$`Life Exp` = NULL
state.x77$`HS Grad` = NULL
state.x77$Frost = NULL
state.x77$abb = NULL
state.x77$Area = NULL

rm(state.x77)
state.x77
state.x77$LOI <- state.x77(c=LOI)
state.x77$LOI
state.x77["LOI"] <- state.x77$Illiteracy

state.x77["Name"] <- row.names(state.x77)


max(state.x77$Income[which(state.x77$Region=="West" & state.x77$LOI=="LOW")])

state.x77$Name[state.x77$Income== max(state.x77$Income[which(state.x77$Region=="West" & state.x77$LOI=="LOW")])
]

state.x77$Name[c(6,12,26)]

Sign<-function(LOI)
{
  
  if(state.x77$Illiteracy<2)
  {
    print(state.x77$LOI="LOW")
  }
}
  
  else if (state.x77$Illiteracy>0)
  {
    print("positive number")
  }
  else
  {
    print("zero")
  }

  {  
  
  if (state.x77$LOI<=1) {
    print("LOW")
  } else if (state.x77$LOI<=2 & state.x77$) {
    print("SOME")
  } else {
    print("HIGH")
  }
  }
  
  
  
state.x77["LOI"] <- ifelse(state.x77$Illiteracy<=1, "LOW!" , "HIGH!")
state.x77["LOI"] <- ifelse(state.x77$Illiteracy>=2, "HIGH!" , "SOME!")
state.x77["LOI"] <- ifelse(state.x77$Illiteracy<=1, "LOW!" ,state.x77$Illiteracy>=2 "HIGH!")


for (i in 1:50) {
  if (state.x77$Illiteracy[i]<1) 
  {
    state.x77$LOI[i]="LOW"
  } else if (state.x77$Illiteracy[i]>1 & state.x77$Illiteracy[i]<2) 
  {
    state.x77$LOI[i]="SOME"
  } else if (state.x77$Illiteracy[i]>2) 
  {
    state.x77$LOI[i]="HIGH"
    
  }
}

state.x77["LOI"] <- ifelse(state.x77$Illiteracy<1, "LOW!", "SOME")
state.x77["LOI"] <- ifelse(state.x77$Illiteracy>1, "SOME!", "SOME")
state.x77["LOI"] <- ifelse(state.x77$Illiteracy>=2, "HIGH!", "LOW")
                       
state.x77$LOI <- ifelse(state.x77$Illiteracy>=2, "HIGH!", "LOW")

if(state.x77$Illiteracy>=2) state.x77$LOI <- "HIGH!"
if(state.x77$Illiteracy>=1) state.x77$LOI <- "LOW!"

Operation <- "HIGH"

Output <- switch (Operation,
                  "LOW" = {state.x77$Illiteracy<=1
                  }
                  , "SOME" = {state.x77$Illiteracy>=2}
switch (object,
  case = action
)


if(state.x77$Illiteracy<1){
  state.x77$LOI = "LOW!"
} else {
  if(state.x77$Illiteracy>2){
    state.x77$LOI = "HIGH!"  
  } else {
    state.x77$LOI = "SOME!"  
  }
}

state.x77["LOI"] <- if(state.x77$Illiteracy<=1){
  state.x77$LOI = "LOW!"
} else {
  if(state.x77$Illiteracy>=2){
    state.x77$LOI = "HIGH!"  
  } else {
    state.x77$LOI = "SOME!"  
  }
}

state.x77["LOI"] <- ifelse(state.x77$Illiteracy<=1, "LOW!" , "HIGH!")
state.x77["LOI"] <- ifelse(state.x77$Illiteracy=2, "HIGH!" ,state.x77$Illiteracy<2 "SOME!" ,state.x77$Illiteracy=1 "LOW")



which
