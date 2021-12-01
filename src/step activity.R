library(lubridate)
#merges the data of step_activity
step_activity=rbind(cyber.security.1_step.activity,cyber.security.2_step.activity,
                    cyber.security.3_step.activity,cyber.security.4_step.activity,
                    cyber.security.5_step.activity,cyber.security.6_step.activity,
                    cyber.security.7_step.activity)

step_activity=step_activity %>% filter(last_completed_at != "")
step_activity_1.14=step_activity %>% filter(step == "1.14")
step_activity_1.14
step_1.14=step_activity_1.14[,5:6]
step_1.14
s=as.data.frame(step_1.14)
(attributes(s))
d=as.POSIXct(s)
#计算时间差
s1=difftime(as.POSIXct(ymd_hms(s$last_completed_at)),ymd_hms(s$first_visited_at),units='secs')
class(s1)
s1=as.numeric(s1)
s2=as.data.frame(s1)
apply(s2,2,function(x){which.max(x)})
(s2[1036,])
apply(s2,2,function(x){which.min(x)})
(s2[508,])
colnames(s1)=c("s1")
ggplot(s2,aes(s1))+geom_freqpoly(bins=30)



##1.1
step_activity=step_activity %>% filter(last_completed_at != "")
step_activity_1.14=step_activity %>% filter(step == "1.14")
step_activity_1.14
step_1.14=step_activity_1.14[,5:6]
step_1.14
s=as.data.frame(step_1.14)
(attributes(s))
d=as.POSIXct(s)
#计算时间差
s1=difftime(as.POSIXct(ymd_hms(s$last_completed_at)),ymd_hms(s$first_visited_at),units='secs')

