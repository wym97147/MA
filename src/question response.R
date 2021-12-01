##Delete all rows with missing values
#删除第8列，因为全都为空值
question_response=question_response[,-8]
#删除表中存在na的值
question_response=na.omit(question_response)
#提取1.7.1回答的人数
quiz_question_1.7.1=question_response %>% filter(quiz_question == "1.7.1")
#将回答为TRUE的id重复值删除
quiz_1.7.1_true=quiz_question_1.7.1 %>% filter(correct == "true")
index=duplicated(quiz_1.7.1_true$learner_id)
quiz_1.7.1_true=quiz_1.7.1_true[!index,]
quiz_1.7.1_true=table(quiz_1.7.1_true$correct)
quiz_1.7.1_true#做对的人数有3143
#将回答为FALSE的id重复值删除
quiz_1.7.1_false=quiz_question_1.7.1 %>% filter(correct == "false")
index2=duplicated(quiz_1.7.1_false$learner_id)
quiz_1.7.1_false=quiz_1.7.1_false[!index2,]
quiz_1.7.1_false=table(quiz_1.7.1_false$correct)
quiz_1.7.1_false#做错的人数有1040
quiz_question_1.7.1=table(quiz_question_1.7.1$correct)
quiz_question_1.7.1
#总错误率
quiz_1.7.1_error_rate=1847/5019
quiz_1.7.1_error_rate#0.368
#重复错误率
quiz_1.7.1_error_re=1847-1040
quiz_1.7.1_error_re
quiz_1.7.1_error_rerate=quiz_1.7.1_error_re/1847
quiz_1.7.1_error_rerate#重复错误率0.437


#1.7.2
quiz_question_1.7.2=question_response %>% filter(quiz_question == "1.7.2")
#将回答为TRUE的id重复值删除
quiz_1.7.2_true=quiz_question_1.7.2 %>% filter(correct == "true")
index=duplicated(quiz_1.7.2_true$learner_id)
quiz_1.7.2_true=quiz_1.7.2_true[!index,]
quiz_1.7.2_true=table(quiz_1.7.2_true$correct)
quiz_1.7.2_true#做对的人数有3138
#将回答为FALSE的id重复值删除
quiz_1.7.2_false=quiz_question_1.7.2 %>% filter(correct == "false")
index3=duplicated(quiz_1.7.2_false$learner_id)
quiz_1.7.2_false=quiz_1.7.2_false[!index3,]
quiz_1.7.2_false=table(quiz_1.7.2_false$correct)
quiz_1.7.2_false#做错的人数有1274
#总错误率
quiz_question_1.7.2=table(quiz_question_1.7.2$correct)
quiz_question_1.7.2
quiz_1.7.2_error_rate=1301/4468
quiz_1.7.2_error_rate#0.29
#重复错误率
quiz_1.7.2_error_re=1301-1274
quiz_1.7.2_error_re
quiz_1.7.2_error_rerate=quiz_1.7.2_error_re/1301
quiz_1.7.2_error_rerate#重复错误率0.021

#1.7.3
quiz_question_1.7.3=question_response %>% filter(quiz_question == "1.7.3")
#将回答为TRUE的id重复值删除
quiz_1.7.3_true=quiz_question_1.7.3 %>% filter(correct == "true")
index=duplicated(quiz_1.7.3_true$learner_id)
quiz_1.7.3_true=quiz_1.7.3_true[!index,]
quiz_1.7.3_true=table(quiz_1.7.3_true$correct)
quiz_1.7.3_true#做对的人数3082
##将回答为FALSE的id重复值删除
quiz_1.7.3_false=quiz_question_1.7.3 %>% filter(correct == "false")
index4=duplicated(quiz_1.7.3_false$learner_id)
quiz_1.7.3_false=quiz_1.7.3_false[!index4,]
quiz_1.7.3_false=table(quiz_1.7.3_false$correct)
quiz_1.7.3_false#做错的人数有926
#总错误率
quiz_question_1.7.3=table(quiz_question_1.7.3$correct)
quiz_question_1.7.3
quiz_1.7.3_error_rate=1961/5065
quiz_1.7.3_error_rate#0.387
#重复错误率
quiz_1.7.3_error_re=1961-926
quiz_1.7.3_error_re
quiz_1.7.3_error_rerate=quiz_1.7.3_error_re/1961
quiz_1.7.3_error_rerate#重复错误率0.528

#1.7.4
quiz_question_1.7.4=question_response %>% filter(quiz_question == "1.7.4")
#将回答为TRUE的id重复值删除
quiz_1.7.4_true=quiz_question_1.7.4 %>% filter(correct == "true")
index=duplicated(quiz_1.7.4_true$learner_id)
quiz_1.7.4_true=quiz_1.7.4_true[!index,]
quiz_1.7.4_true=table(quiz_1.7.4_true$correct)
quiz_1.7.4_true#3179
##将回答为FALSE的id重复值删除
quiz_1.7.4_false=quiz_question_1.7.4 %>% filter(correct == "false")
index5=duplicated(quiz_1.7.4_false$learner_id)
quiz_1.7.4_false=quiz_1.7.4_false[!index5,]
quiz_1.7.4_false=table(quiz_1.7.4_false$correct)
quiz_1.7.4_false#做错的人数有210
#总错误率
quiz_question_1.7.4=table(quiz_question_1.7.4$correct)
quiz_question_1.7.4
quiz_1.7.4_error_rate=211/3427
quiz_1.7.4_error_rate#0.0615
#重复错误率
quiz_1.7.4_error_re=211-210
quiz_1.7.4_error_re
quiz_1.7.4_error_rerate=quiz_1.7.4_error_re/211
quiz_1.7.4_error_rerate#重复错误率0.0047

#1.7.5
quiz_question_1.7.5=question_response %>% filter(quiz_question == "1.7.5")
#将回答为TRUE的id重复值删除
quiz_1.7.5_true=quiz_question_1.7.5 %>% filter(correct == "true")
index=duplicated(quiz_1.7.5_true$learner_id)
quiz_1.7.5_true=quiz_1.7.5_true[!index,]
quiz_1.7.5_true=table(quiz_1.7.5_true$correct)
quiz_1.7.5_true#3192
##将回答为FALSE的id重复值删除
quiz_1.7.5_false=quiz_question_1.7.5 %>% filter(correct == "false")
index6=duplicated(quiz_1.7.5_false$learner_id)
quiz_1.7.5_false=quiz_1.7.5_false[!index6,]
quiz_1.7.5_false=table(quiz_1.7.5_false$correct)
quiz_1.7.5_false#做错的人数有0
#总错误率
quiz_question_1.7.5=table(quiz_question_1.7.5$correct)
quiz_question_1.7.5
quiz_1.7.5_error_rate=0/3255
quiz_1.7.5_error_rate

#1.7.6
quiz_question_1.7.6=question_response %>% filter(quiz_question == "1.7.6")
#将回答为TRUE的id重复值删除
quiz_1.7.6_true=quiz_question_1.7.6 %>% filter(correct == "true")
index=duplicated(quiz_1.7.6_true$learner_id)
quiz_1.7.6_true=quiz_1.7.6_true[!index,]
quiz_1.7.6_true=table(quiz_1.7.6_true$correct)
quiz_1.7.6_true#3159
##将回答为FALSE的id重复值删除
quiz_1.7.6_false=quiz_question_1.7.6 %>% filter(correct == "false")
index7=duplicated(quiz_1.7.6_false$learner_id)
quiz_1.7.6_false=quiz_1.7.6_false[!index7,]
quiz_1.7.6_false=table(quiz_1.7.6_false$correct)
quiz_1.7.6_false#做错的人数有2423
#总错误率
quiz_question_1.7.6=table(quiz_question_1.7.6$correct)
quiz_question_1.7.6
quiz_1.7.6_error_rate=4046/7237
quiz_1.7.6_error_rate#0.56
#重复错误率
quiz_1.7.6_error_re=4046-2423
quiz_1.7.6_error_re
quiz_1.7.6_error_rerate=quiz_1.7.6_error_re/4046
quiz_1.7.6_error_rerate#重复错误率0.40

#对总错误率做图
error_rate<-data.frame(
  group=c("quiz_1.7.1_error_rerate","quiz_1.7.2_error_rerate","quiz_1.7.3_error_rerate","quiz_1.7.4_error_rerate","quiz_1.7.6_error_rerate"),
  value=c(0.368,0.291,0.387,0.062,0,0.56)
)
head(error_rate)
bp<-ggplot(error_rate,aes(x=group,y=value,fill=group))+geom_bar(width=1,stat="identity")
bp
#从饼状图中可以看出，错误率最高的题目是1.7.6，1.7.5错误率为0

#对重复错误率做饼图
error_rerate<-data.frame(
  group=c("quiz_1.7.1_error_rate","quiz_1.7.2_error_rate","quiz_1.7.3_error_rate","quiz_1.7.4_error_rate","quiz_1.7.5_error_rate","quiz_1.7.6_error_rerate"),
  value=c(0.437,0.021,0.528,0.0047,0,0.4)
)
head(error_rerate)
bp2<-ggplot(error_rerate,aes(x=group,y=value,fill=group))+geom_bar(width=1,stat="identity")
bp2
pie2<-bp2+coord_polar("y",start=0)
pie2

#对做对的人数可视化
true_num<-data.frame(
  group=c("1.7.1_true","1.7.2_true","1.7.3_true","1.7.4_true","1.7.5_true","1.7.6_true"),
  value=c(3143,3138,3082,3179,3192,3159)
)
head(true_num)
bp3<-ggplot(true_num,aes(x=group,y=value,fill=group))+geom_bar(stat="identity")+geom_text(aes(label=value,vjust=-0.8,hjust=0.5),show.legend = TRUE)
bp3
#做出每个学生答对每题的人数，由图可以看出1.7.5是正确率最高的一题，1.7.3正确人数是最低的