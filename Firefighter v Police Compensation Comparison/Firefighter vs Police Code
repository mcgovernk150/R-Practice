#Compare Dataset Values
#Read in Files

library(readr)

firefighter <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_firefighter.csv")
View(firefighter)

police <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_police.csv")
View(police)

#Perform Min/Max/Average Analysis for Firefighter Total Salary (TS) and store in variable
min(Firefighter[,6])
firefighterTSMin<-min(firefighter[,6]) 
firefighterTSAvg<-colMeans(firefighter[,6])
firefighterTSMax<-max(firefighter[,6])

#Perform Min/Max/Average Analysis for Firefighter Retirement (R) and store in variable
firefighterRMin<-min(firefighter[,7]) 
firefighterRAvg<-colMeans(firefighter[,7])
firefighterRMax<-max(firefighter[,7])

#Perform Min/Max/Average Analysis for Police Total Salary (TS) and store in variable
policeTSMin<-min(police[,6])
policeTSAvg<-colMeans(police[,6])
policeTSMax<-max(police[,6])

#Perform Min/Max/Average Analysis for Police Retrement (R) and store in variable
policeRMin<-min(police[,7])
policeRAvg<-colMeans(police[,7])
policeRMax<-max(police[,7])

#Compare Dataset Values 
firefighterTSMin
policeTSMin

firefighterTSAvg
policeTSAvg

firefighterTSMax
policeTSMax

firefighterTSAvg-policeTSAvg


firefighterRMin
policeRMin

firefighterRAvg
policeRAvg

firefighterRAvg-policeRAvg


firefighterRMax
policeRMax

#
policeTSMin<-min(police$`Total Salary`)
policeTSMax<-max(police$`Total Salary`)
policeTSAvg<-mean(police$`Total Salary`)

firefighterTSMin<-min(firefighter$`Total Salary`)
firefighterTSMax<-max(firefighter$`Total Salary`)
firefighterTSAvg<-mean(firefighter$`Total Salary`)

policeRMin<-min(police$Retirement)
policeRMax<-max(police$Retirement)
policeRAvg<-mean(police$Retirement)

firefighterRMin<-min(firefighter$Retirement)
firefighterRMax<-max(firefighter$Retirement)
firefighterRAvg<-mean(firefighter$Retirement)


#Create matrix
FirefighterM<-rbind(firefighterTSMin,firefighterTSMax,firefighterTSAvg,firefighterRMin,firefighterRMax,firefighterRAvg)
colnames(FirefighterM)<-c("firefighter")
rownames(FirefighterM)<-c("TSMin","TSMax","TSAvg","RMin","RMax","RAvg")
FirefighterM


#Create vector

PoliceV<-c(policeTSMin,policeTSMax,policeTSAvg,policeRMin,policeRMax,policeRAvg)
PoliceV

#Create combined matrix

CompensationM<-cbind(FirefighterM,PoliceV)
colnames(CompensationM)<-c("firefighter","police")
CompensationM

#Create dataframe

df<-data.frame(CompensationM,FirefighterM-PoliceV)
colnames(df)<-c("firefighter","police","firefighter vs police")
df

