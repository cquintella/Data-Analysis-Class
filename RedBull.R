
#LOAD
amostra<-read.csv("redbul.csv", sep=";")
cnames(amostra)<-c("Sabor","lata", "volume")
laranjas<-amostra[amostra$Sabor=="uva",]
uvas<-amostra[amostra$Sabor=="laranja",]
boxplot(

ggplot(amostra, aes(x=Medida, color=Sabor))+geom_density()
