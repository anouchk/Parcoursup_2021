# Let's call the library
library(data.table)

# Let's set the working directory
setwd('/Users/analutzky/Desktop')

# Let's read our csv
Table_parcoursup_21=fread('2021_parcoursup.csv')

# showing it excel-like
View(Table_parcoursup_21)

# showing column names
colnames(Table_parcoursup_21)

var.names=colnames(Table_parcoursup_21)
### getting rid of space and special characters in columns names 
colnames(Table_parcoursup_21)=make.names(var.names)
# showing column names
colnames(Table_parcoursup_21)


###### les valeurs d'une variable #####
unique(Table_parcoursup_21$Filière.de.formation.très.agrégée)
#  [1] "Ecole d'Ingénieur" "Ecole de Commerce" "BTS"               "CPGE"              "Licence"          
#  [6] "Autre formation"   "BUT"               "Licence_Las"       "IFSI"              "EFTS"             
# [11] "PASS"   

unique(Table_parcoursup_21$Filière.de.formation.détaillée)
# 521 valeurs
unique(Table_parcoursup_21$Filière.de.formation)
# 51 valeurs
unique(Table_parcoursup_21$Filière.de.formation.détaillée)
# c'est la colonne [14]. La même que la [12] ?
unique(Table_parcoursup_21$Filière.de.formation.très.détaillée)
# 1000 valeurs

colnames(Table_parcoursup_21)[14] = "Filière.de.formation.détaillée.2"
unique(Table_parcoursup_21$Filière.de.formation.détaillée.2)
# 521 valeurs => les colonnes [12] et [14] sont bien les mêmes

unique(Table_parcoursup_21$Regroupement.1.effectué.par.les.formations.pour.les.classements)

unique(Table_parcoursup_21$list_com)

unique(Table_parcoursup_21$tri)


