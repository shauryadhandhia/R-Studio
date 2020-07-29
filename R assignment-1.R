#DATAFRAME 1
id=c(1,2,3,4)
subject= c("ADA","R programming","Mobile Computing","FBL")
classes= c(5,6,4,1)
df1=data.frame(id,subject,classes)
df1

#DATAFRAME 2
id=c(1,2,3,4)
credits= c(5,4,4,2)
type=c("Advanced","Intermediate","Beginner","Intermediate")
df2=data.frame(id,credits,type)
df2

#Merging two dataframes
library("dplyr")
df_full_join=full_join(df1,df2,by="id")
df_full_join

#Add a new row to the dataframe
df1=rbind(df1,data.frame(id=5,subject="Mathematics",classes=3))
df1

#Add a new column to the dataframe
df2=cbind(df2,data.frame(Students_Enrolled=c(40,45,30,70)))
df2

#New dataframe with a subset of data from the previous dataframe
df_subset=subset(df1,subject=="R programming" | classes>4)
df_subset

#Edit the values of 3rd row and 2nd column of the dataframe
df1[3,2]="Networking"
df1

#Delete the last row of the dataframe
df_delete=df1[-5,]
df_delete

#Apply recasting operation on the dataframe
library("reshape2")
df_melt=melt(df2,id.vars=c("id","type"),measure.vars=c("credits","Students_Enrolled"))
df_melt
df_decast=dcast(df_melt, variable+id~type, value.var="value")
df_decast