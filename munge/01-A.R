# Example preprocessing script.
library(ProjectTemplate)
setwd("/Users/wangyimiao/Desktop/MA")
load.project()
#merges the data of archetype-survey-responses
archetype_survey_responses=rbind(cyber.security.1_archetype.survey.responses,
                                 cyber.security.2_archetype.survey.responses,
                                 cyber.security.3_archetype.survey.responses,
                                 cyber.security.4_archetype.survey.responses,
                                 cyber.security.4_archetype.survey.responses,
                                 cyber.security.5_archetype.survey.responses,
                                 cyber.security.6_archetype.survey.responses,
                                 cyber.security.7_archetype.survey.responses)

#merges the data of enrolments
enrolments=rbind(cyber.security.1_enrolments,cyber.security.2_enrolments,
                 cyber.security.3_enrolments,cyber.security.4_enrolments,
                 cyber.security.5_enrolments,cyber.security.6_enrolments,
                 cyber.security.7_enrolments)

#merges the data of leaving-survey-responses
leaving_survey_responses=rbind(cyber.security.1_leaving.survey.responses,
                               cyber.security.2_leaving.survey.responses,
                               cyber.security.3_leaving.survey.responses,
                               cyber.security.4_leaving.survey.responses,
                               cyber.security.5_leaving.survey.responses,
                               cyber.security.6_leaving.survey.responses,
                               cyber.security.7_leaving.survey.responses)

#merges the data of question-response
question_response=rbind(cyber.security.1_question.response,
                        cyber.security.2_question.response,
                        cyber.security.3_question.response,
                        cyber.security.4_question.response,
                        cyber.security.5_question.response,
                        cyber.security.6_question.response,
                        cyber.security.7_question.response)

#merges the data of step_activity
step_activity=rbind(cyber.security.1_step.activity,cyber.security.2_step.activity,
                    cyber.security.3_step.activity,cyber.security.4_step.activity,
                    cyber.security.5_step.activity,cyber.security.6_step.activity,
                    cyber.security.7_step.activity)

#merges the data of team_member
team_member=rbind(cyber.security.2_team.members,cyber.security.3_team.members,
                  cyber.security.4_team.members,cyber.security.5_team.members,
                  cyber.security.6_team.members,cyber.security.7_team.members)


#merges the data of video-stats
video_stats=rbind(cyber.security.3_video.stats,cyber.security.4_video.stats,
                  cyber.security.5_video.stats,cyber.security.6_video.stats,
                  cyber.security.7_video.stats)
view(video_stats)
#merges the data of weekly-sentiment
weekly_sentiment=rbind(cyber.security.1_weekly.sentiment.survey.responses,
                 cyber.security.2_weekly.sentiment.survey.responses,
                 cyber.security.3_weekly.sentiment.survey.responses,
                 cyber.security.4_weekly.sentiment.survey.responses,
                 cyber.security.5_weekly.sentiment.survey.responses,
                 cyber.security.6_weekly.sentiment.survey.responses,
                 cyber.security.7_weekly.sentiment.survey.responses)

#data deduplication of archetype-survey-responses
index=duplicated(archetype_survey_responses$learner_id)
archetype_survey_responses1=archetype_survey_responses[!index,]

##delete all the row with NA
enrolments=na.omit(enrolments)
#enrolments data deduplication
index=duplicated(enrolments$learner_id)
enrolments1=enrolments[!index,]

##Delete all rows with missing values
archetype_survey_responses=na.omit(archetype_survey_responses)
leaving_survey_responses=na.omit(leaving_survey_responses)




