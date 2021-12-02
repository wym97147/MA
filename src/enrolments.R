#enrolment,删除存在unknow的行
library(dplyr)
gender = enrolments1 %>% filter(gender != "Unknown")
gender=table(gender$gender)
gender=sort(gender,decreasing = T)[1:2]
gender=as.data.frame(gender)
age_range = enrolments1 %>% filter(age_range != "Unknown")
class(age_range)
age_range=table(age_range$age_range)
age_range=sort(age_range,decreasing = T)[1:7]
age_range=as.data.frame(age_range)
highest_education = enrolments1 %>% filter(highest_education_level != "Unknown")
highest_education=table(highest_education$highest_education_level)
highest_education=sort(highest_education,decreasing = T)
highest_education=as.data.frame(highest_education)
employment_status = enrolments1 %>% filter(employment_status != "Unknown")
employment_status=table(employment_status$employment_status)
employment_status=sort(employment_status,decreasing = T)
employment_area = enrolments1 %>% filter(employment_area != "Unknown")
employment_area=table(employment_area$employment_area)
employment_area=sort(employment_area,decreasing = T)
employment_area=as.data.frame(employment_area)
detected_country = enrolments1 %>% filter(detected_country != "--")
table_detected = table(detected_country$detected_country)
detected_country1=sort(table_detected,decreasing=T)[1:10]
class(detected_country1)
detected_country1=as.data.frame(detected_country1)
##作图
library(ggplot2)
library(fmsb)
#可视化country_1
ggplot(gender,aes(x=Var1,y=Freq,fill=gender[,1],group=factor(1)))+geom_bar(stat="identity")
ggplot(age_range,aes(x=Var1,y=Freq,fill=age_range[,1],group=factor(1)))+geom_point(stat="identity")
ggplot(highest_education,aes(x=Var1,y=Freq,fill=highest_education[,1],group=factor(1)))+geom_bar(stat="identity")
ggplot(detected_country1,aes(x=Var1,y=Freq,fill=detected_country1[,1],group=factor(1)))+geom_bar(stat="identity")
ggplot(employment_area,aes(x=Var1,y=Freq,fill=employment_area[,1],group=factor(1)))+geom_bar(stat="identity")
#print radarchart of employment status
radarfig<-rbind(rep(1300,8),rep(100,8),employment_status)
radarfig=as.data.frame(radarfig)
radarchart(radarfig,axistype=1,
           pcol=rgb(69/225,137/225,137/225),pfcol=rgb(69/225,137/225,137/225,0.6),
           plwd=4,seg=5,
           cglcol="grey",cglty=1,cglwd=2,axislabcol="black",caxislabels=seq(0,15,3),vlcex=0.7,calcex=0.7)

