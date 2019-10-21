#setwd("C:\\Users\\RenXiaochen\\Desktop\\应用数理统计\\GDP_experience")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#setwd('..\\GDP_experience')
#getwd(rstudioapi::getActiveDocumentContext)
data_orin<-read.csv("year_data.csv")
data_csv<-data_orin[0:10,2:6]
lm.fit0<-lm(GDP~.,data = data_csv)
summary(lm.fit0)

lm.fit0_step<-step(lm.fit0)
summary(lm.fit0_step)

par(mfrow=c(2,2))
plot(lm.fit0_step)



par(mfrow=c(1,1))
fit1<-fitted(lm.fit0_step)

plot(fit1,data_csv$GDP,xlab='拟合值',ylab='真实值')

