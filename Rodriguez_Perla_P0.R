##CARGO MI SECUENCIA 
sec<- readDNAStringSet("first (1).fasta")
sec #visualio mis secuencias concatenadas, ya me aparece la longitud de mis secuencias y mis 
#bases con dierentes colores, ademas de aparecer el nombre de cada una de mis secuencias 

###Elijo 2 problemas:
#Contar nucleotidos 
# Calcular contenido de GC 

###1. PARA CONTAR LOS NUCLEOTIDOS CON LIBRERIA ESPECIALIZADA
alphabetFrequency(sec) 
#esta funcion me permite ver la frecuencia de nucleotidos que aparecen en mis cadenas, a travs de una matriz 

###PARA CONTAR LOS NUCLEOTIDOS SIN LIBRERIA ESECIALIADA



# Calcular contenido de GC con libreria especializada 
dinucleotideFrequency(sec)
#esta funcion me permite observar la frecuencia de mis dinucleotidos, entre ellos el GC, CG
##tambien puedo optar por letterfrecuency y delimitar mis letras de interes "GC", y obtengo el porcentaje 
#por cadena de mi cintenido de GC 
letterFrequency(sec, "GC", as.prob = TRUE)

##CALCULAR CONTENIDO DE GC SIN LIBRERIA ESPECIALIZADA 
w<-function(x){dinucleotideFrequency(x)["GC"] *100 / length(x)}  #creo una funcion que me permita 
# encontrar la frecuencia de mi dinucleotido y lo multiplico por 100 y lo divido entre la longitud de la secuencia 
#para obtener el porcentaje de GC  en mi secuencia de interes, y posteriormente esta funcion la aplicp 
#para cualquier secuencia
w(sec$secuencia2)#visualizo el % de GC  en mi 2° secuencia de la secuencia concatenada 

