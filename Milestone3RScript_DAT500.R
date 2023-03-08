#Use this template to begin milestone 3  
#Use the code provided to read the files into RStudio and then add your code below each of the comment prompts that follow
#Read in Files
library(readr)

firefighter <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_firefighter.csv")
View(firefighter)

police <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_police.csv")
View(police)

#To begin milestone 3, you will continue from your milestone 2.  Below is a sample of what your 
# milestone 2 variables would have looked like.
#To begin milestone 3, adjust the sample field names and variable names below to be the same fields used in Milestone 2

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

#Milestone 3 data structures
#add your code below each of the prompts below
#Create your matrix
FirefighterM<-rbind(firefighterTSMin,firefighterTSMax,firefighterTSAvg,firefighterRMin,firefighterRMax,firefighterRAvg)
colnames(FirefighterM)<-c("firefighter")
rownames(FirefighterM)<-c("TSMin","TSMax","TSAvg","RMin","RMax","RAvg")
FirefighterM


#Create your vector

PoliceV<-c(policeTSMin,policeTSMax,policeTSAvg,policeRMin,policeRMax,policeRAvg)
PoliceV

#Create your combined matrix

CompensationM<-cbind(FirefighterM,PoliceV)
colnames(CompensationM)<-c("firefighter","police")
CompensationM

#Create your dataframe

df<-data.frame(CompensationM,FirefighterM-PoliceV)
colnames(df)<-c("firefighter","police","firefighter vs police")
df

