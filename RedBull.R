
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


# Amostragem %>% select(Sabor,Medida)%>% filter(Sabor == "uva")


boxplot(uvas$medida,laranjas$medida)

ggplot(amostra, aes(x=Medida, color=Sabor))+geom_density()


# Depois que limpar os dados podemos fazer um T-Test.
# Vamos assumir que não existe diferenças... Isso será nossa hipótese nula.
# Hipotese Alternativa é que existe diferencas
#podemos aplicar um T-Test
t.test(data=amostra, Medida ~ Sabor)
