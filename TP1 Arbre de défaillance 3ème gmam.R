#1
#2/ Charger le package FaultTree dans R.


library(FaultTree)

Arbre1<-ftree.make(type="or", name="pas de flux", name2="vers le récepteur")

# document about the function (help with arguments)
?ftree.make

#4.	Afficher la dataframe.

Arbre1

# 5
Arbre1<-addLogic(Arbre1, at=1, type="or", name="pas de flux dans", name2="la ligne 2")


#6
Arbre1<-addProbability(Arbre1, at=1, prob=0.1, name="Le composant B", name2="bloque le flux")

#7
# non, nous n'avons pas les probabilités de tous les noeuds logiques

#8
Arbre1[,c(1:8,15,16)]

#9

ftree2html(Arbre1, write_file=TRUE) 
browseURL("Arbre1.html")

#10 Il s'agit d'une aide supplémentaire pour déterminer l'argument"at"
#pour l'ajout d'évènements ultérieurs

# 11

Arbre1<-addProbability(Arbre1, at=2, prob=0.01, name="Aucun flux", name2="de la source")
Arbre1<-addProbability(Arbre1, at=2, prob=0.1, name="Le composant A", name2="bloque le flux")

#12


#13
Arbre1<-ftree.calc(Arbre1)

#14
ftree2html(Arbre1, write_file=TRUE) 
browseURL("Arbre1.html")


# 15

Arbre2<-ftree.make(type="or", name="pas de flux", name2="vers le récepteur")
Arbre2<-addLogic(Arbre2, at=1, type="or", name="pas de flux dans", name2="la ligne 3")

Arbre2<-addLogic(Arbre2, at=2, type="or", name="pas de flux dans", name2="la ligne 2")

Arbre2<-addProbability(Arbre2, at=2, prob=0.1, name="Le composant B", name2="bloque le flux")

Arbre2<-addProbability(Arbre2, at=3, prob=0.01, name="Aucun flux", name2="de la source")
Arbre2<-addProbability(Arbre2, at=3, prob=0.1, name="Le composant A", name2="bloque le flux")

Arbre2<-ftree.calc(Arbre2)
ftree2html(Arbre2, write_file=TRUE) 
browseURL("Arbre2.html")


# 16

Arbre3<-ftree.make(type="and", name="flux intempestif", name2="vers le récepteur")
Arbre3<-addLogic(Arbre3, at=1, type="and", name="flux intempestif", name2=" dans la ligne 3")

Arbre3<-addLogic(Arbre3, at=2, type="and", name="flux intempestif", name2="dans la ligne 2")

Arbre3<-addProbability(Arbre3, at=2, prob=0.1, name="flux passe par", name2="le composant B")

Arbre3<-addProbability(Arbre3, at=3, prob=0.01, name="flux intempestif", name2="de la source")
Arbre3<-addProbability(Arbre3, at=3, prob=0.1, name="flux passe par", name2="le composant A")

Arbre3<-ftree.calc(Arbre3)
ftree2html(Arbre3, write_file=TRUE) 
browseURL("Arbre3.html")