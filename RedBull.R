
#LOAD
amostra<-read.csv("redbul.csv", sep=";")
#ajustar nome de colunas
cnames(amostra)<-c("sabor","lata", "medida")


#vamos entender o dado
head(amostra)
tail(amostra)
str(amostra)
names(amostra)
summary(amostra)

#Limpeza de Dados
amostra %>% 
    group_by(sabor) %>% 
    summarise(mean(medida, na.rm=TRUE))



laranjas<-amostra[amostra$sabor=="laranjas",]
uvas<-amostra[amostra$sabor=="uvas",]



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
