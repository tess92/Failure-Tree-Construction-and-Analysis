# Failure-Tree-Construction-and-Analysis

 2021/2022

Sûreté de fonctionnement


I. Rappel :
Définition : La sûreté de fonctionnement (dependability, SdF) consiste à évaluer les risques, prévoir l’occurrence des défaillances et tenter de minimiser les conséquences des situations catastrophiques lorsqu’elles se présentent.
1) Les attributs FMDS • Fiabilité : probabilité que le système soit non défaillant sur [0, t] • Maintenabilité : probabilité que le système soit réparé sur [0, t] • Disponibilité : probabilité que le système fonctionne à l’instant t • Sécurité : probabilité d’éviter un évènement catastrophique
[Tapez ici] 2021/2022
2
2) Les entraves Les entraves sont représentées par la trilogie : faute, erreur et défaillance. • La Faute est la cause interne de la défaillance. • L’erreur est une manifestation interne, un signal ou un état incorrect. Elle conduira ou non à une défaillance. • La défaillance est la cessation de l’aptitude d’une entité à accomplir une fonction requise.
3) Les moyens Les moyens de la Sûreté de Fonctionnement, sont des solutions éprouvées pour casser les enchaînements dans la trilogie faute, erreur et défaillance.
La prévision de faute permet d’anticiper les fautes (de manière qualitative ou quantitative) et leur impact sur le système C’est le domaine de la prévision qui va nous intéresser le plus avec des outils comme : • Approche qualitative : o Analyse préliminaire des risques (APR) o Détermination des conséquences (AMDEC) o Identification des causes (Arbres de défaillances) • Approche quantitative (probabiliste) o Arbres de défaillances (Traitement mathématique) o Bloc Diagramme de Fiabilité (BDF), ou Diagramme de Fiabilité ou Reliability Block Diagram (RDB) o Chaînes de Markov o Réseau de Petri o Modèles de croissance de fiabilité
[Tapez ici] 2021/2022
3
II. Arbre de défaillances
Aussi appelé arbre de défauts ou arbre de fautes ou arbre des causes et en anglais c’est Fault tree method.
L’arbre des causes est un modèle de la logique des interactions entre des événements conduisant à l’événement indésirable. L’arbre des causes constitue un moyen de représentation de la logique des Défaillances
III. Objectif du TP
• Déterminer toutes les causes possibles d’un « événement indésirable ».
• Calculer sa probabilité.
• Afficher l’arbre de défaillance complet, à l’aide du logiciel R, d’un simple exemple de circulation de l’eau à travers deux vannes A et B.
IV. Travail demandé
1. Installer le package FaultTree.
(Tools / Package → Install package → FaultTree)
2. Charger le package FaultTree dans R.
Dans un premier lieu, nous voulons considérer que l'événement indésirable est « pas de flux vers le récepteur ». Deux événements causaux seront à considérer : « pas de flux dans la ligne 2 » ou « le composant B bloque le flux ». L'existence d’un de ces deux évènements empêchera le flux de passer vers le récepteur.
Nous voulons afficher un arbre de défaillance appelé « Arbre1 ».
3. Créer une dataframe en utilisant la commande ftree.make.
4. Afficher la dataframe.
[Tapez ici] 2021/2022
4
5. Modifier l’arbre de défaillance existant en prenant compte de l’évènement causal « pas de flux dans la ligne 2 » en utilisant la commande addLogic.
6. Modifie l’arbre de défaillance existant en prenant compte de l’évènement causal « le composant B bloque le flux » et avec l'ajout d'une probabilité pure égale à 0.1. Utiliser la commande addProbability.
7. Peut-on calculer la probabilité de l’évènement supérieur ? Pourquoi ?
8. Afficher les colonnes 1→8 et 16 de la dataframe Arbre1 pour voir la progression.
9. Générer un affichage graphique significatif avec les commandes ftree2html et browseURL.
10. Les symboles graphiques sont numérotés en rouge. À quoi servent ces numéros ?
Dans le cas où il n’y a pas de flux dans la ligne 2, deux événements causaux seront à considérer : « Aucun flux de la source » avec une probabilité de 0.01 et « le composant A bloque le flux » avec une probabilité de 0.1.
11. Ajouter ces deux événements à l’arbre de défaillance.
12. Calculer la probabilité de l’évènement indésirable sommet.
13. Calculer la probabilité de l’évènement indésirable sommet à l’aide de la commande ftree.calc.
14. Afficher de nouveau l’arbre de défaillance avec les probabilités correspondantes à chaque évènement indésirable ou les quantifications.
15. Ajouter l’évènement « pas de flux dans la ligne 3 » dans la position appropriée dans un nouvel arbre de défaillance nommé Arbre2.
Prenons le cas de l’arbre de défaillance Arbre3 d’un flux qui passe involontairement vers le récepteur. Considérons l’évènement supérieur « flux intempestif vers le récepteur» et on utilise les portes AND.
16. Afficher l’arbre Arbre3.
