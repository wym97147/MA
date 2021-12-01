#删除为0的列
video_stats=video_stats[,-16]
video_stats=video_stats[,-18]
video_stats=video_stats[,-19]
video_stats=video_stats[,-25]
video_stats=video_stats[,-2]
video_stats1=as.data.frame(video_stats)
dim(video_stats1)
#可视化total view
p1<-ggplot(video_stats1,aes(total_views))
bp5<-p1+geom_density(color="red",fill="yellow")
bp5
#可视化total download
p<-ggplot(video_stats1,aes(total_downloads))
bp4<-p+geom_density(color="red",fill="gray")
bp4
#Explore the relationship between total view and total download 
video_stats_1=video_stats1[1:13,]
class(video_stats_1)
library(reshape2)
dd=video_stats_1[,1:4]
p2<-ggplot(dd,aes(x=total_views,y=total_downloads,group=factor(1)))+geom_point(stat="identity",color=dd$step_position)+geom_text(aes(label=step_position,vjust=-0.8,hjust=0.5),show.legend = TRUE)
p2
#对视频播放形式的研究
ggplot(video_stats_1,aes(x=step_position,y=total_caption_views))+geom_area(fill="blue",alpha=2)
ggplot(video_stats_1,aes(x=step_position,y=viewed_hd))+geom_area(fill="red",alpha=2)
#对不同地区的观看人数做出箱线图
ggplot(video_stats_1,aes(x=step_position,y=europe_views_percentage,group=factor(1)))+geom_boxplot()
ggplot(video_stats_1,aes(x=step_position,y=asia_views_percentage,group=factor(1)))+geom_boxplot()
ggplot(video_stats_1,aes(x=step_position,y=oceania_views_percentage,group=factor(1)))+geom_boxplot()


