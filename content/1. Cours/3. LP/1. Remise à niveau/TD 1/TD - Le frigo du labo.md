---
tags:
  - enseignement/cours
  - enseignement/LP
lastUpdated: 2026-09-29
---
On souhaite créer une nouvelle gamme de réfrigérateurs ménagers, en recherchant une consommation énergétique minimale. On s’intéresse dans un premier temps à un cycle standard au R-134a, et on sélectionne les composants du circuit sur la base d’une puissance frigorifique de 200 W. Dans la version la plus simple de ce type d’appareil, le condenseur et l’évaporateur ne sont pas ventilés, l’organe de détente est un capillaire. En raison de la compacité, on néglige les pertes de charge dans tout le circuit, et les échanges thermiques dans les tuyauteries (sauf s’ils sont  précisés).
>[!info] Données :
Pour une température ambiante de +25°C, et une température de cuve de +5°C,
Cycle mono-étagé suivant :
Sortie évaporateur : Vapeurs saturées à -15°C ;
Aspiration compresseur : surchauffe =+20 K
Sortie condenseur/entrée détendeur : $T_{Sat}$ = 40°C et sous refroidissement : 5K

## Partie 1 : Dimensionnement d’un circuit standard
1. Déterminer les coordonnées thermodynamiques du cycle (tableau annexe 1)
2. Justifier les pincements importants au niveau des deux échangeurs 
3. Sélectionner le compresseur, et calculer le point de refoulement réel (enthalpie et température)
4. Calculer alors la puissance frigorifique réelle (on maintient le cycle envisagé,) et celle rejetée au condenseur.
5. Déterminer le COP de l’appareil.
## Partie 2 : Détente par turbine
Pour améliorer le COP, on envisage de remplacer le capillaire de détente par une turbine, Tu1, de rendement 
isentropique égal à 0,5. (Rendement isentropique : $\frac{\Delta h_{réel}}{\Delta h_{is}}$).
Les pressions de fonctionnement, surchauffes et sous-refroidissement sont les mêmes qu’en partie 1.
6. Tracer à main levée le nouveau cycle, et déterminer les coordonnées du fluide frigorigène en sortie de la turbine. 
7. Avec le compresseur sélectionné dans la première partie, calculer la puissance frigorifique, la puissance absorbée et la puissance thermique rejetée au condenseur.
8. Déduire le COP de l’installation.
## Partie 3 : Utilisation d’une seconde turbine de détente en phase vapeur
Pour améliorer l’efficacité du condenseur, on souhaite utiliser le travail de détente d’une seconde turbine pour 
entraîner un ventilateur
Le travail de détente récupéré par la turbine sur les vapeurs entre le refoulement du compresseur ($T_{sat}$ = 40°C) et 
l’entrée du condenseur (Tsat = 35°C).
Le rendement isentropique de la turbine « Tu2’ » est de 0,40. 
9. Tracer le cycle à main levée.
10. Compléter le tableau des coordonnées thermodynamiques en détaillant les calculs des points (SORTIE TURBINES)
11. Calculer la puissance frigorifique produite à l’évaporateur et le COP du réfrigérateur. 
12. Comparer à celui des deux solutions précédentes.

# Ressources
## Annexe 1
### Partie 1
|                                | P   | Tsat | T   | h   | s   | v   |
| ------------------------------ | --- | ---- | --- | --- | --- | --- |
| 1 - Aspiration                 |     |      |     |     |     |     |
| 2is - Refoulement isentropique |     |      |     |     |     |     |
| 2r - Refoulement réel          |     |      |     |     |     |     |
| 3 - Sortie condenseur          |     |      |     |     |     |     |
| 4 - Entrée évaporateur         |     |      |     |     |     |     |
| 5 - Sortie évaporateur         |     |      |     |     |     |     |

### Partie 2

|                                | P   | Tsat | T   | h   | s   | v   |
| ------------------------------ | --- | ---- | --- | --- | --- | --- |
| 1 - Aspiration                 |     |      |     |     |     |     |
| 2is - Refoulement isentropique |     |      |     |     |     |     |
| 2r - Refoulement réel          |     |      |     |     |     |     |
| 3 - Sortie condenseur          |     |      |     |     |     |     |
| 4 - Entrée évaporateur         |     |      |     |     |     |     |
| 5 - Sortie évaporateur         |     |      |     |     |     |     |

### Partie 3

|                                | P   | Tsat | T   | h   | s   | v   |
| ------------------------------ | --- | ---- | --- | --- | --- | --- |
| 1 - Aspiration                 |     |      |     |     |     |     |
| 2is - Refoulement isentropique |     |      |     |     |     |     |
| 2r - Refoulement réel          |     |      |     |     |     |     |
| 3 - Sortie condenseur          |     |      |     |     |     |     |
| 4 - Entrée évaporateur         |     |      |     |     |     |     |
| 5 - Sortie évaporateur         |     |      |     |     |     |     |
## Annexe 2 - Catalogue compresseur
![](pdfeditor_joLLHnHp28.png)