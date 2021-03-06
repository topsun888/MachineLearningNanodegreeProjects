library(dplyr)
library(rpart)
library(rattle)
student<-read.csv("student-data.csv")
head(student)
student_2<-select(student,school,sex,age,address,absences,passed)
fit<-rpart(passed~.,data=student_2)
fancyRpartPlot(fit)
plot(fit)
text(fit)
