##Delete all rows with missing values
question_response=rbind(cyber.security.1_question.response,
                        cyber.security.2_question.response,
                        cyber.security.3_question.response,
                        cyber.security.4_question.response,
                        cyber.security.5_question.response,
                        cyber.security.6_question.response,
                        cyber.security.7_question.response)
#Delete the 8th column because it is all empty
question_response=question_response[,-8]
#Delete the value of na in the table
question_response=na.omit(question_response)
(question_response$correct[which(question_response$correct=="false")] <- 2)
(question_response$correct[which(question_response$correct=="true")] <- 1)
dim(question_response$correct)
f<-factor(question_response$correct)
dd<-as.integer(f)
dd
typeof(dd)
correct<-as.data.frame(dd)
question_response1=question_response[,-8]
question_response1=data.frame(question_response1,correct)
typeof(question_response1$dd)
question_response2=question_response1[,-8]
#Extract the number of people who answered 1.8.1
quiz_question_1.8.1=question_response2 %>% filter(quiz_question == "1.8.1")
quiz_question_1.8.1=as.data.frame(quiz_question_1.8.1)
set.seed(1234)
sub=sample(1:nrow(quiz_question_1.8.1),round(nrow(quiz_question_1.8.1)*8/10))
#8/10 of the data as the training set
data_train=quiz_question_1.8.1[sub,]
data_train_x=as.data.frame(data_train[,2:7])
data_train_y=data_train[,8]
mode(data_train_y)
quiz_train=data.frame(data_train_x,correct=data_train_y)
typeof(quiz_train$correct)
dim(quiz_train)
head(as.integer(quiz_train$correct))
quiz_train1=data.frame(quiz_train[,3:6],correct=as.integer(quiz_train$correct)-1)
quiz_train1
typeof(quiz_train1$correct)
t=as.numeric(gsub(",",'',quiz_train1$response))
t
t=as.data.frame(t)
quiz_train1=quiz_train1[,-4]
quiz_train1=data.frame(quiz_train1,t)
quiz_train1
#2/10 of the data as the test set
data_test=quiz_question_1.8.1[-sub,]
data_test_x=as.data.frame(data_test[,2:7])
data_test_y=data_test[,8]
mode(data_test_y)
quiz_test=data.frame(data_test_x,correct=data_test_y)
quiz_test1=data.frame(quiz_test[,3:6],correct=as.integer(quiz_test$correct)-1)
t1=as.numeric(gsub(",",'',quiz_test1$response))
t1=as.data.frame(t1)
quiz_test1=quiz_test1[,-4]
quiz_test1=data.frame(quiz_test1,t1)
quiz_test1
typeof(quiz_test1$correct)
dim(quiz_test1)
table(quiz_test1$correct)
#fit logistic model
lr_fit=glm(correct~t,data=quiz_train1)
summary(lr_fit)
#Test the correlation between variables
library(psych)
library(car)
corr.test(quiz_train1[,4:5])
#Make predictions
phat=predict(lr_fit,quiz_train1,type="response")
yhat=ifelse(phat>0.5,1,0)
(confusion=table(Observed=quiz_train1$correct,predict=yhat))
#training error
1-mean(quiz_train1$correct==yhat)
#use test data
lr_test=glm(correct~t1,data=quiz_test1)
phat_test=predict(lr_test,quiz_test1,type="response")
yhat_test=ifelse(phat_test>0.5,1,0)
#testing error
1-mean(quiz_test1$correct==yhat_test)

#plot distribution of responses
par(mfrow=c(1,1))
hist(quiz_train1$t[quiz_train1$correct==1],col=rgb(0,0,1,1/4),breaks=25,freq=FALSE,xlim=c(0,130),ylim=c(0,0.2),main="",xlab="quiz_train")
hist(quiz_train1$t[quiz_train1$correct==0],col=rgb(1,0,0,1/4),freq=FALSE,add=TRUE)
legend("topright",legend =c("false","true"),bg="gray90",fill=c(rgb(0,0,1,1/4),rgb(1,0,0,1/4)))


