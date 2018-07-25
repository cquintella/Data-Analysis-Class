
#LOAD
amostra<-read.csv("redbul.csv", sep=";")
cnames(amostra)<-c("sabor","lata", "medida")
head(amostra)
amostra %>% 
    group_by(sabor) %>% 
    summarise(mean(medida, na.rm=TRUE))
laranjas<-amostra[amostra$sabor=="uva",]
uvas<-amostra[amostra$sabor=="laranja",]
uvas<-uvas[!is.na(uvas$medida),]
laranjas<-laranjas[!is.na(laranjas$medida),]
boxplot(uvas$medida,laranjas$medida)

ggplot(amostra, aes(x=Medida, color=Sabor))+geom_density()
