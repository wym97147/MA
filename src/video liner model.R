#主成分分析
library(MASS)
video_stats2=video_stats1[,-(5:17)]
video_stats2=video_stats2[,-2]
view(video_stats2)
#to obtain the sample covariance matrix use the var function
S=var(video_stats2[,2:9])
S
#extract the diagonal elements
(s_sq=diag(S))
#compute the total variation
(total_variation=sum(s_sq))
(pca1=prcomp(x=video_stats2[,2:9]))
summary(pca1)
par(mfrow=c(1,1))
plot(pca1,type="lines",main="")
title(xlab="Component number")
#fit linear model
x1_raw=video_stats2[,3:9]
x1_raw=as.matrix(x1_raw)
y=video_stats2[,2]
#standardise explanatory variables
x1=scale(x1_raw)
head(x1)
#create single data frame containing response and explanatory variables
video_data=data.frame(y,x1)
lsq_fit=lm(y~.,data=video_data)
summary(lsq_fit)
par(mfrow=c(1,2))
plot(lsq_fit,which=1:2)
#左边的残差图分布比较散乱，而大部分都在在0点附近随机分布的，因此可以认为视频的总播放量与不同地区播放占比是呈线性关系的
#右边面板是一个分位数图，用来评估残差的正态性，大部分点均靠近单位对角线，说明线性回归模型的残差是正态的


