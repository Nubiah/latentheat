---
tags:
  - cours
  - ordonnancement
lastUpdated: 2025-07-30
created: 2025-07-29
---
# Ordonnancement
> [!note] Objectif
> Organiser des travaux en tenant compte des contraintes de délais, des tâches liées et du chemin critique pour y parvenir.
# 1. Objectif final
> [!warning] Définition
> Il s'agit d'optimiser (dans le temps, financièrement...) l'organisation des diverses opérations constituant un projet pour en réduire le coût global.

<div style="page-break-after: always;"></div>

# 2. Définitions générales
## 2.1. Tâche
Une tâche est une intervention, travail, attente technique (séchage d'une dalle...) de durée déterminée. Elle est définie par 3 principaux paramètres :
- Définition technique (un nom) : "Raccordement électrique des CTA"
- Durée, date de début & de fin : "3.5 jours, du 21/04 à 8h au 24/04 à 12h"
- Qualification, habilitation, nombre d'intervenant : "3 électriciens P1"
## 2.2. Dépendant, antécédent & antériorité
Une tâche B est dépendante d'une tâche A s'il faut avoir réalisée complètement ou en partie la tâche A avant de pouvoir commencer d'exécuter B. A est alors **antécédente** à B. Il y a une **contrainte d'antériorité** de A sur B.
> [!note] Remarque
> Une tâche peut avoir plusieurs autres tâches qui lui soient antécédentes
## 2.3. Délai de projet
C'est la durée totale d'exécution partant du début de la tâche initiale (la première que l'on doit réaliser) à la fin de la tâche finale (celle qui ne peut être faite qu'après toutes les autres).

## 2.4. Marges
### 2.4.1. Marge libre
C'est la plage de temps à l'intérieur de laquelle on peut déplacer (= on peut prendre du retard) une tâche sans modifier le délai du projet et sans perturber (= modifier les dates de début ou de fin possible) les opérations suivantes.
Cela permet de laisser libre les tâches suivantes de commencer au plus tôt.
> [!note] En bref :
> **ML** = début au plus tôt tâche suivante - fin au plus tard tâche précédente - durée

![](MargeLibre.png)
### 2.4.2. Marge totale
C'est la plage de temps à l'intérieur de laquelle on peut déplacer une tâche sans modifier le délai du projet et qui si elle est consommée (écoulée avant le début ou rajoutée à la durée d'exécution) réduit ou ne laisse aucune marge aux opérations suivantes (qui débutent à leur date de début au plus tard).
> [!note] En bref :
> **MT** = début au plus tard tâche concernée - début au plus tôt tâche concernée
> **MT** = début au plus tard tâche suivante - fin au plus tôt tâche précédente - durée

![](MargeTotale.png)

Une tâche dont la marge totale est nulle est dite **tâche critique**. L'ensemble des tâches critiques est le **chemin critique** (il peut y avoir plusieurs chemins critiques pour un même projet). Si on rallonge la durée d'une tâche critique, on rallonge d'autant le délai du projet.
### 2.4.3. Exemple

![](Exemple2.png)

> [!quote] Calcul des marges pour la Tâche B
> - **Marge libre** : 8 - 2 - 3 = 3
> - **Marge totale** : 5 - 2 = 3

![](Exemple1.png)
> [!quote] Calcul des marges pour la Tâche B
> - **Marge libre** : 8 - 3 - 3 = 2
> - **Marge totale** : 5 - 2 = 3

<div style="page-break-after: always;"></div>

# 3. Graphique de GANTT
Gantt est une méthode d'ordonnancement de type **diagramme**. On parle d'ailleurs en général de diagramme de Gantt.
Cette méthode visuelle est efficace lorsqu'il s'agit de représenter une *vingtaine de tâche*. Au delà, la visibilité risque d'être compromise et il conviendra de préférer d'autres outils ou de créer plusieurs diagrammes de Gantt.
## 3.1. Etape préalable
- Faire l'inventaire des différentes tâches en respectant au mieux une chronologie
- Définir les tâches directement antérieures à chaque tâche
- Estimer la durée de chaque tâche
## 3.2. Réalisation
- Les coordonnées du graphique font apparaître les **tâches** en *ordonnées* et la **durée** (heure, jour, semaine, ...) en *abscisse* : chaque ligne représente une tâche et chaque colonne un temps.
- Chaque tâche est représentée par une droite horizontale dont la longueur est proportionnelle à la durée : dessiner chaque tâche en représentant la contrainte en amont
- Lorsque la dernière tâche est représentée, on suit le graphique en "marche arrière" pour déterminer le chemin critique.
## 3.3. Exemple
![](Pasted%20image%2020250730181049.png#center)

| Tâche | Durée (jours) | Tâches antécédentes |
| :---: | :-----------: | :-----------------: |
|   A   |       2       |          -          |
|   B   |       5       |          A          |
|   C   |       3       |          A          |
|   D   |       1       |          B          |
|   E   |       1       |          C          |
|   F   |       5       |        B ; E        |
|   G   |       2       |        D ; F        |
> [!note] Explications
> Les tâches hachurées correspondent au **chemin critique** du projet !

<div style="page-break-after: always;"></div>

# 4. La méthode PERT (Program Evaluation & Research Task)
Elle est utilisée pour calculer les dates, marges et modifier aisément le projet.
## 4.1. Conventions de représentation

![](DiagPert.png)
> [!note] Explications
> - Un bloc dans un diagramme de Pert correspond toujours à une tâche (et une seule)
> - Le bloc est appelé avec le nom de la tâche, et on précise le début, la fin et la durée de la tâche.
> - Les blocs en jaune sont les étapes du chemin critique du projet.

### 4.1.2. Autre représentation
![](Pasted%20image%2020250730184708.png)
## 4.2. Définitions & règles spécifiques
- **Tâche** : représentée par une flèche
	- Règle : pas d'échelle, 1 tâche $\rightarrow$ 1 nom, 1 nom $\rightarrow$ 1 tâche
- **Tâche fictive** : de durée nulle, elle ne représente qu'une contrainte d'antériorité
- **Etape** : représentée par un cercle : lieu du graphe où convergent (arrivent) ou d'où divergent (partent) les tâches. Elle n'a pas de durée. Il n'y a qu'une seule étape début et qu'une seule étape fin.
	- Règle : 1 étape $\rightarrow$ 1 nom, 1 nom $\rightarrow$ 1 étape
- **Date d'étape au plus tôt** : date à laquelle la dernière tâche qui converge sur l'étape se termine. La date d'étape au plus tôt de l'étape Fin correspond au délai du projet. LA date d'étape au plus tôt de l'étape début correspond au début du projet.
	- Règle : inscrire le plus grand chiffre - date de fin au plus tôt de toutes les tâches convergentes sur l'étape
> [!note] Calcul
> Date d'étape au plus tôt = MAX(date de fin au plus tôt étape précédente + durée de tâche)
> On exécute le calcul en partant de l'étape début et allant vers l'étape finale
- **Date d'étape au plus tard** : date à laquelle la première tâche qui diverge de l'étape débute
	- Règle : inscrire le plus petit chiffre - date de début de toutes les tâches divergentes
> [!note] Calcul
> Date d'étape au plus tard = MIN (date de fin au plus tard étape suivante - durée de tâche)
> On exécute le calcul en remontant de l'étape fin vers l'étape début. La date d'étape au plus tard de l'étape début est la même que sa date d'étape au plus tôt. Idem pour l'étape Fin.

> [!warning] Règle de dépendance
> On ne peut débuter une tâche partant d'une étape que si toutes les tâches qui convergent sur cette étape sont terminées.
> $\rightarrow$ date début de tâche au plus tôt $\geq$ date d'étape (début) au plus tôt
> $\rightarrow$ date début de tâche au plus tard $\leq$ date d'étape (début) au plus tard
## 4.3. Méthode de tracé
1. Tracer l'étape *Début*
2. Faire partir de l'étape *Début* les tâches n'ayant pas d'antécédent
3. Tracer les étapes en bout des tâches mises en place
4. Tracer les tâches partant des étapes qui viennent d'être tracées en 2., il se peut que des tâches convergent sur les mêmes étapes
5. Recommencer le 3. & 4. jusqu'à ce que toutes les tâches soient mises en place
6. Numéroter les étapes
7. En partant de l'étape *Début*, calculer et inscrire les dates d'étapes au plus tôt
8. En partant de l'étape *Fin*, calculer et inscrire les dates d'étape au plus tard
## 4.4. Calcul des marges
- **Marge livre** = début au plus tôt tâche suivante - fin au plus tard tâche précédente - durée
- **Marge totale** = début au plus tard tâche concernée - début au plus tôt tâche concernée
Le calcul se fait sous forme de tableau et à partir du graphe en calculant d'abord les dates de début et de fin pour chaque tâche :

| Tâche | Durée (jour) | Antécédents | Début au plus tôt | Début au plus tard | Fin au plus tôt | Fin au plus tard | ML  | MT  | Critique ? |
| :---: | :----------: | :---------: | :---------------: | :----------------: | :-------------: | :--------------: | :-: | :-: | :--------: |
|   A   |      2       |      -      |         0         |         0          |        2        |        2         |  0  |  0  |    Oui     |
|   B   |      5       |      A      |         2         |         2          |        7        |        7         |  0  |  0  |    Oui     |
|   C   |      3       |      A      |         2         |         3          |        5        |        6         |  0  |  1  |    Non     |
|   D   |      1       |      B      |         7         |         11         |        8        |        12        |  4  |  4  |    Non     |
|   E   |      1       |      C      |         5         |         6          |        6        |        7         |  0  |  1  |    Non     |
|   F   |      5       |    B ; E    |         7         |         7          |       12        |        12        |  0  |  0  |    Oui     |
|   G   |      2       |    D ; F    |        12         |         12         |       14        |        14        |  0  |  0  |    Oui     |

<div style="page-break-after: always;"></div>

# 5. Gestion des charges et capacités
## 5.1. Organisation et gestion des temps d'activités

|     |    Fonction    |                                           Définition                                           |          Exemple           |
| :-: | :------------: | :--------------------------------------------------------------------------------------------: | :------------------------: |
|  1  |    Méthodes    |                                Affecter une durée à un travail                                 |       TA = 3 heures        |
|  2  | Ordonnancement |                                    Planifier dans le temps                                     | Le 30/01, de 14h30 à 17h30 |
|  3  |  Réalisation   | Effectuer le travail selon les prescriptions des méthodes au moment prévu par l'ordonnancement |         2 soudeurs         |
> [!note] En bref
> La gestion des charges et capacités est une coordination entre ces trois fonctions :
*"Faire réaliser une quantité de travail en une durée donnée (impératif de délai) par un ensemble de moyen (humains et matériels) en quantité donnée"*
## 5.2. Définitions
### 5.2.1. Capacité de travail
La capacité de travail correspond au nombre d'heures de travail qu'il est possible à une équipe de fournir pendant son horaire de travail normal.
> [!note] Exemple :
> 12 ouvrier; 7h45 de travail par jour; 5 jours de travail par semaine $\rightarrow$ 465 heures par semaine de capacité brute

> [!warning] Remarque
> Lors de gestion de planning et de projet, il est important de tenir compte de la capacité effective et non de la capacité brute !
> **Capacité effective** = capacité brute - absentéisme - pertes de temps
### 5.2.2. Charge
La charge correspond à la somme des temps de travaux à réaliser pour une équipe et une période donnée. 
- **Charge programmée** = charge prévue de longue date et planifiée
- **Charge disponible** = capacité - charge programmée
- **Charge instantanée** = constatée simultanément pour une unité de temps
> [!note] Remarque
> **Charge moyenne** = $\frac{\Sigma \ nombre\ d'intervenants\ * durée}{\Sigma\ Durée}$

> [!warning] Définitions
> On parle de **surcharge** si la charge est supérieure à la capacité. On peut palier à une surcharge *temporaire* par l'intérim, et si elle est *durable* par du recrutement.
> On parle de **sous charge** si la charge est inférieure à la capacité. Il se peut que l'entreprise soit alors en sureffectif et vienne à licencier des employés. 
### 5.2.3. But de la gestion des charges et capacités
Eviter les sous charges et donc transformer les charges disponibles en charges programmées pour ne pas être en sureffectifs (ce qui mène souvent à des licenciements). Il faut que les charges correspondent aux capacités de l'entreprise et vice versa.
### 5.2.4. Lissage des charges
Un projet a ses charges lissées si celles-ci varient le moins possible au cours de l'exécution.
> [!note] Définition
> Charges instantanées = charge moyenne

## 5.3. Méthode

| Tâche | Anté. | Nbr d'intervenants | Durée (jours) |
| :---: | :---: | :----------------: | :-----------: |
|   A   |       |         5          |      15       |
|   B   |       |         6          |       7       |
|   C   |   A   |         3          |       1       |
|   D   |   A   |         4          |       8       |
|   E   | B ; C |         3          |       3       |
L'objectif est d'avoir une charge régulière, avec le moins de "sommets" possibles. Il n'est pas toujours ni évident ni possible de régler tous les problèmes de surcharges de travail, mais un bon gestionnaire cherche à les minimiser.
La surcharge de travail entraîne souvent une baisse de productivité à longs termes, ce qui est à éviter lorsque l'on travaille sur un projet.

