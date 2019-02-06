# final project
#preparing the data set
setwd("/media/parth/CE02917E02916BE9/R")
input=read.csv(("world_bank.csv"))
nrow(input)
#11723 rows
ncol(input)
# 5cols
# there are 217 different countries in the list
# first row contains the name of the attribute
# and there is data for 15 years
# I need to extract the data present in different columns
names(input)
# i just need the third and fifth column
input=input[,c(3,5)]
input1=input[,2]
#extracting the population
population_total=input[1:217,]
population_total
#lets make a vector of names and then assign them to row extract
name_read=read.csv("world_bank_names.csv")
ncol(name_read)
names(name_read)
name_vect=as.vector(name_read[,2])
name_vect
c1=population_total
c2=input[218:(218+216),]
c2
218+216
c3=input[435:(435+216),]
c3
435+216
c4=input[652:(652+216),]
c4
652+216
c5=input[869:(869+216),]
c5
869+216
c6=input[1086:(1086+216),]
c6
1086+216
c7=input[1303:(1303+216),]
c7
1303+216
c8=input[1520:(1520+216),]
c8
1520+216
c9=input[1737:(1737+216),]
c9
1737+216
c10=input[1954:(1954+216),]
c10
1954+216
c11=input[2171:(2171+216),]
c11
2171+216
c12=input[2388:(2388+216),]
c12
2388+216
c13=input[2605:(2605+216),]
c13
2605+216
c14=input[2822:(2822+216),]
c14
2822+216
c15=input[3039:(3039+216),]
c15
3039+216
c16=input[3256:(3256+216),]
c16
3256+216
c17=input[3473:(3473+216),]
c17
3473+216
c18=input[3690:(3690+216),]
c18
3690+216
c19=input[3907:(3907+216),]
c19
3907+216
c20=input[4124:(4124+216),]
c20
4124+216
c21=input[4341:(4341+216),]
c21
4341+216
c22=input[4558:(4558+216),]
c22
4558+216
c23=input[4775:(4775+216),]
c23
4775+216
c24=input[4992:(4992+216),]
c24
4992+216
c25=input[5209:(5209+216),]
c25
5209+216
c26=input[5426:(5426+216),]
c26
5426+216
c27=input[5643:(5643+216),]
c27
5643+216
c28=input[5860:(5860+216),]
c28
5860+216
c29=input[6077:(6077+216),]
c29
6077+216
c30=input[6294:(6294+216),]
c30
6294+216
c31=input[6511:(6511+216),]
c31
6511+216
c32=input[6728:(6728+216),]
c32
6728+216
c33=input[6945:(6945+216),]
c33
6945+216
c34=input[7162:(7162+216),]
c34
7162+216
c35=input[7379:(7379+216),]
c35
7379+216
c36=input[7596:(7596+216),]
c36
7596+216
c37=input[7813:(7813+216),]
c37
7813+216
c38=input[8030:(8030+216),]
c38
8030+216
c39=input[8247:(8247+216),]
c39
8247+216
c40=input[8464:(8464+216),]
c40
c41=input[8681:(8681+216),]
c41
c42=input[8898:(8898+216),]
c42
c43=input[9115:(9115+216),]
c43
c44=input[9332:(9332+216),]
c44
c45=input[9549:(9549+216),]
c45
c46=input[9766:(9766+216),]
c46
c47=input[9983:(9983+216),]
c47
c48=input[10200:(10200+216),]
c48
c49=input[10417:(10417+216),]
c49
c50=input[10634:(10634+216),]
c50
c51=input[10851:(10851+216),]
c51
c52=input[11068:(11068+216),]
c52
c53=input[11285:(11285+216),]
c53
c54=input[11502:(11502+216),]
c54
name_vect

del=list(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38)
names(del)=name_vect[1:38]
del=unlist(del)
del
c39
#del1=list(c39,c40,c41,c42)
#del1
#names(del1)=name_vect[40:43]
#del1=unlist(del1)
#name_vect[40:43]
#class(del1)
c39
name_vect[40]
names(c39)=name_vect[40]
names(c40)=name_vect[41]
c40
###################3
#############################3
df=data.frame(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38)
df
View(df)
ncol(df)
#76 columns
dff=df[,c(1,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76)]
View(dff)
name_vect
names(c52)=name_vect[55]
dff=cbind(dff,c52)
View(dff)
ncol(dff)
dff=dff[-40]
# data frame has been created and now applying clustering
#40th row contains the per capita income
#dff[40]=na.omit(dff[40])
#sum(is.na(dff[40]))
#dff[40]=scale(as.numeric(dff[40])
#type(dff[40])
dff[40]
#in dff[40] we have .. values
#a=c(12,42,36,21,25,10,14,13,98,99,106,108,116)
fit=kmeans(dff[40],2)
fit
names(fit)
fit[1]
dff[190,40]
View(dff[40])
dff=dff[c(-5,-10,-22,28,-37,-40,-51,-62,-65,-69,-75,-94,-103,-113,-114,-131,-141,-152,-158,-164,-172,-183,-190,-201,-211)]

dff1=dff[-c(5,10,22,28,37,40,51,62,65,69,75,94,103,113,114,131,141,152,158,164,172,183,190,201,211),]
dff1
View(dff1)
ncol(dff1)
fit=kmeans(dff1[40],2)
names(fit)
fit[2]
R_df=data.frame()
P_df=data.frame()
dff1=cbind(dff1,fit$cluster)
#separating the data based on clustser
for(i in 1:nrow(dff1)){
  if(dff1[i,41]==1){
  P_df=rbind(P_df,dff1[i,])    
  }
  else{
    R_df=rbind(R_df,dff1[i,])
  }
}
View(R_df)
View(P_df)
P=as.vector(R_df[,40])
class(P)
P=as.numeric(P)
mean(P)
# i have the list of rich country in R_df
# and poor country in P_df
barplot(as.numeric(R_df[,40]),xlab = "Rich country",ylab = "Per cpaita income",col=rainbow(8))
PCI_mean_R=mean(as.numeric(as.vector(R_df[,40])))
PCI_mean_P=mean(as.numeric(as.vector(P_df[,40])))
class(PCI_mean)
barplot(c(PCI_mean_R,PCI_mean_P),xlab = "rich vs poor",col=rainbow(8))
#########################################################333
#population growth
PG_mean_R=mean(as.numeric(as.vector(R_df[,3])))
PG_mean_P=mean(as.numeric(as.vector(P_df[,3])))
barplot(c(PG_mean_R,PG_mean_P),xlab = "rich vs poor",ylab="population growth",col=rainbow(8))
?barplot
#############################################################
#surface area
SA_mean_R=mean(as.numeric(as.vector(R_df[,4])))
SA_mean_P=mean(as.numeric(as.vector(P_df[,4])))
barplot(c(SA_mean_R,SA_mean_P),xlab = "rich vs poor",ylab="Surface Area",col=rainbow(8))

#################################################################
#now i have introduced NA value in my data in place of ..
R_df[R_df==".."]<-NA
P_df[P_df==".."]<-NA

# life expectancy at birth

LE_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,11]))))
LE_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,11]))))
barplot(c(LE_mean_R,LE_mean_P),xlab = ("Rich vs Poor"),ylab = "Life Expectancy",col = rainbow(8))

#################################################################
#fertility rate
FR_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,12]))))
FR_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,12]))))
barplot(c(FR_mean_R,FR_mean_P),xlab="Rich Vs Poor",ylab = "Fertility rate",col=rainbow(3))

#############################################################

#Adolescent Fertility Rate (15-19)
AFR_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,13]))))
AFR_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,13]))))
barplot(c(AFR_mean_R,AFR_mean_P),xlab="Rich Vs Poor",ylab = "Adolescent Fertility rate",col=rainbow(3))

###############################################################3

# mortality rate
MR_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,16]))))
MR_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,16]))))
barplot(c(MR_mean_R,MR_mean_P),xlab="Rich Vs Poor",ylab = "mortality rate",col=rainbow(3))

################################################################33

# immunization, measles
IMM_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,18]))))
IMM_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,18]))))
barplot(c(IMM_mean_R,IMM_mean_P),xlab="Rich Vs Poor",ylab = "Immunization,Measles",col=rainbow(3))

####################################################################33
# Primary completion rate
PR_C_mean_R=mean(as.numeric(as.vector(na.omit(R_df[,19]))))
PR_C_mean_P=mean(as.numeric(as.vector(na.omit(P_df[,19]))))
barplot(c(PR_C_mean_R,PR_C_mean_P),xlab="Rich Vs Poor",ylab = "Primary Completion rate",col=rainbow(3))
