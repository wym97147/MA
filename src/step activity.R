library(lubridate)
#merges the data of step_activity
step_activity=rbind(cyber.security.1_step.activity,cyber.security.2_step.activity,
                    cyber.security.3_step.activity,cyber.security.4_step.activity,
                    cyber.security.5_step.activity,cyber.security.6_step.activity,
                    cyber.security.7_step.activity)

step_activity=step_activity %>% filter(last_completed_at != "")


#1.1
step_activity_1.1=step_activity %>% filter(step == "1.1")
step_activity_1.1
step_1.1=step_activity_1.1[,5:6]
step_1.1
h=as.data.frame(step_1.1)
#Calculate the time difference
h1=difftime(as.POSIXct(ymd_hms(h$last_completed_at)),ymd_hms(h$first_visited_at),units='secs')
class(h1)
h1=as.numeric(h1)
q=mean(h1)
h2=as.data.frame(h1)
view(h2)
apply(h2,2,function(x){which.max(x)})
(h2[58,])
apply(h2,2,function(x){which.min(x)})
(h2[4918,])
#1.14
step_activity_1.14=step_activity %>% filter(step == "1.14")
step_activity_1.14
step_1.14=step_activity_1.14[,5:6]
step_1.14
s=as.data.frame(step_1.14)
#Calculate the time difference
s1=difftime(as.POSIXct(ymd_hms(s$last_completed_at)),ymd_hms(s$first_visited_at),units='secs')
class(s1)
s1=as.numeric(s1)
s2=as.data.frame(s1)
apply(s2,2,function(x){which.max(x)})
(s2[1036,])
apply(s2,2,function(x){which.min(x)})
(s2[508,])

