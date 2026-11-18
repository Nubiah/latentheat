---
tags:
  - enseignement/cours
  - enseignement/module
lastUpdated: 2026-10-16
---
## Objectifs
- Être capable de tracer un cycle frigorifique avec Coolprop
- Avoir un fichier prêt pour n'importe quel fluide
## Pré-requis
- Compréhension des diagrammes enthalpiques & des tracés frigorifiques avec pertes de charge
- Utilisation de Microsoft Excel
# Introduction
## Généralité
L'utilisation des logiciels de tracé de cycles frigorifiques est désormais complètement répandue dans les entreprises, on retrouve parmi ces programmes, entre autres :
- Coolpack
- Coolprop
- Solkane
- Iscool
- Etc.
Tous ces logiciels permettent de réaliser des tracés de cycles frigorifiques, généralement en mono-étagés, ou bi-étagés, pour la plupart des fluides frigorifiques existants.
Nous allons utiliser Coolprop qui est une bibliothèque de données open-source, à jour et vérifiée.
Coolprop peut s'utiliser sur de nombreux supports, notamment Excel & Python, permettant son exploitation de bien des manières.
Ici nous n'allons traiter que la partie sur Excel, permettant une exploitation graphique des informations récupérées.
# Scénario
> [!info] Objectif
> On étudie le fonctionnement d'une machine frigorifique mono-étagée. On tiendra compte de pertes de charge ainsi que d'échauffements et de refroidissements dans les divers éléments de l'installation.

## Hypothèses
- Les températures d'évaporation et de condensation sont stables
- La machine frigorifique fonctionne en régime permanent établi (pas de variation dans le temps)
- Les puissances frigorifique ainsi que les rendements sont connus
- Les surchauffes et sous-refroidissements sont déterminés
- Les pertes de charge dans les canalisations sont estimées
- La compression est considérée comme polytropique ( $\neq$ isentropique) :
	- $\eta_{is}=1-K*\tau$ (avec K le coefficient de compression)
	- $\eta_{is}=\frac{\Delta_{is}}{\Delta_{réel}}$
- $\eta_{meca}=0.85$
- $\eta_{élec}=0.9$
- $\cos \phi=0.8$
- $K=0.042$
## Données initiales
Les données initiales permettent de définir précisément chacun des points du circuit frigorifiques :
![](Pasted%20image%2020261020115624.png)
- Installation de 15 kW fonctionnant au R404A
- Température de condensation de 40°C (donnée en $\theta_{sat}$ liquide)
- Température d'évaporation de 0°C (donnée en $\theta_{sat}$ vapeur)
- Surchauffe à l'évaporateur de 5°C et surchauffe à l'aspiration du compresseur de 10°C
- Sous-refroidissement au condenseur de 5°C
- Refroidissement sur la conduite liquide de 10°C
- Refroidissement sur la conduite de refoulement de 10°C
- Pertes de charge dans les canalisations d'aspiration et de refoulement de 2K chacune
- Pertes de charge dans l'ensemble de la ligne de 1K
- Coefficient de compression polytropique : K = 0,042
## Modélisation
Charger le fichier **TD-Coolprop-Vierge.xlsx** qui contient le tableau ci-dessous :
![](Drawing%202026-10-20%2013.48.52.excalidraw.png)
> [!info] Vous êtes libres de modifier la mise en page, mais ce n'est pas le but du TD

La zone 1 peut être renseignée en utilisant les données contenues dans l'énoncé.
**La zone 2 ne doit contenir que des formules faisant référence à d'autres cellules !**
La zone 3 nécessite d'avancer un peu dans le TD pour être complétée. Vous utiliserez les formules que vous connaissez déjà.

Les points sont numérotés à partir de l'aspiration du compresseur comme représenté sur le schéma de principe, et l'objectif est d'obtenir le tracé du cycle suivant ainsi que les caractéristiques des différents points de la figure 3 :
![](Pasted%20image%2020261020115659.png)

# Décomposition de la fonction PropsSI
La fonction que nous allons utiliser concernant Coolprop est la suivante : **PropsSI()**. Elle s'utilise de cette manière : 

$$=PropsSI(valeur\mathrm{Re}cherchée;grandeur 1;valeur 1;grandeur 2; valeur 2;ref)$$
## Explications
- valeurRecherchée : c'est la grandeur que l'on cherche
- grandeur1 : c'est la première grandeur qu'on utilise pour déterminer le point recherché
- valeur1 : c'est la valeur de la première grandeur
- grandeur2 : c'est la deuxième grandeur qu'on utilise pour déterminer le point recherché
- valeur2 : c'est la valeur de la deuxième grandeur
- ref : on renseigne ici le réfrigérant

> [!warning] **Attention**
> Autour de chaque terme de type texte (valeurRecherchée, grandeur1 & grandeur2) il est nécessaire de mettre des guillemets. Exemple :
> =PropsSI("P";"T";cellule;"Q";0;réfrigérant)

## Remarque
- Attention aux unités ! La température est en Kelvin, la pression en Pascal, les enthalpies massiques en J/kg... etc.
- Il faut deux informations non redondantes : certains couples de données ne fonctionnent pas. Voyez la fonction comme un curseur qui a besoin d'une abscisse et d'une ordonnée
- La liste des grandeurs disponibles est disponibles sur le site de Coolprop et un extrait se trouve sur la page suivante
# Méthodologie pour le tableau
## Partie 1 : températures saturantes & pressions
1. Avant tout il est nécessaire de faire les correspondances entre l'énoncé et les données disponibles. Remplissez les valeurs de température saturantes (liquide & vapeur) et de température de fluide que vous pouvez (il y a au moins une information par point). *Attention aux pertes de charge !*
2. Pour chacun des points, en fonction de leur état vapeur ou liquide, trouver respectivement la température saturante de rosée ou de bulle
3. Utiliser la fonction **PropsSI** pour trouver la pression en fonction de la température saturante de rosée (titre de vapeur de 1 = 100%)
4. Faite de même pour trouver la pression en fonction de la température saturante de bulle (titre de vapeur de 0). *Il est possible de faire un copier coller de la fonction précédente, en l'adaptant.*
5. Utiliser la fonction **PropsSI** pour trouver la température saturante manquante liquide ou vapeur, en fonction de la pression et de la saturation en vapeur ou liquide
## Partie 2 : température réelle
6. A partir des données de fonctionnement du cycle frigorifique (énoncé), déterminer les températures des différents points (exception faite du point 2R) en utilisant les surchauffes, sous-refroidissements, échauffement ou refroidissement dans les conduites
## Partie 3 : le reste du tableau
7. Utiliser la fonction **PropsSI** pour déterminer les autres caractéristiques du fluide
8. Cas du point 2R :
	1. Il faut d'abord calculer l'entropie au point 1
	2. On remplie ensuite le point 2S en utilisant la définition de la compression isentropique ($S_{1}=S_{2s}$)
	3. Une fois le point 2S remplie, H2R est calculable à partir de la formule disponible en Hypothèses
	4. Les autres caractéristiques du point 2R peuvent maintenant être déterminés
# Extraits des documentations Coolprop

| Grandeur         | Unité              | Lettre Coolprop |
| ---------------- | ------------------ | --------------- |
| Vitesse du son   | $m.s^{-1}$         | A               |
| Chaleur massique | $J.kg^{-1}.K^{-1}$ | C               |
| Masse volumique  | $kg.m^{-3}$        | D               |
| Enthalpie        | $J.kg^{-1}$        | H               |
| Pression         | Pa                 | P               |
| Titre en vapeur  | %                  | Q               |
| Entropie         | $J.kg^{-1}.K^{-1}$ | S               |
| Température      | K                  | T               |
| Energie interne  | $J.kg^{-1}$        | U               |
> [!info] La totalité en suivant ce lien : https://coolprop.org/coolprop/HighLevelAPI.html#table-of-string-inputs-to-propssi-function (en anglais)

# Tracé de la courbe de saturation
## Introduction
Chaque fluide étant différent, il est nécessaire d'automatiser également le tracé de la courbe de saturation pour chaque fluide.
Le diagramme enthalpique (de Mollier) permet de représenter le cycle selon les axes :
- Abscisse : les enthalpies massiques en $kJ.kg^{-1}$
- Ordonnée : les pressions absolues en bar avec échelle logarithmique
Il nous faut donc ces deux informations pour chaque point de la courbe pour pouvoir les tracer.
## Méthodologie
### Calcul automatique des points
1. Créer une nouvelle feuille (dans le même fichier Excel) que vous nommerez "Courbes". Elle permettra d'intégrer les caractéristiques de la courbe de saturation liquide et de la courbe de saturation vapeur du fluide.
2. Sur cette feuille, réalisez dans un tableau de 3 colonnes :
	1. Pression : en commançant à 1 avec un incrément de 1 jusqu'à 35 bars
	2. H_rosée : en utilisant une fonction PropSi pour calculer de manière automatique l'enthalpie du point de saturation vapeur à la pression correspondante
	3. H_liquide : idem avec le point de saturation liquide
![](Coolprop%20p5%20img2.jpg)
### Création du graphique
3. Retournez sur la première feuille. Cliquez sur l'onglet "Insertion". Cliquez ensuite sur le graphique en **nuage de point reliés par une courbe** (et aucun autre).
4. Cliquez ensuite sur "Sélectionner Données"
5. Cliquez sur "Ajouter" :
	1. Donnez un nom reconnaissable à la série (ex : Bulle)
	2. La ligne des X correspond à l'abscisse, et donc aux données en Enthalpie que vous venez de calculer dans la deuxième feuille
	3. La ligne des Y correspond à l'ordonnée, et donc aux pressions
6. Recommencez pour la deuxième ligne de saturation (les deux doivent être chacune sur une série)
7. Vous devriez voir apparaitre deux lignes, mais pas encore telles que nous les utilisons. Pour ce faire, double cliquez sur l'axe des ordonnées, et allez dans les options d'axe. Cliquez sur "Echelle logarithmique".
8. Nommez vos axes, rendez le graphique lisible et fonctionnel
### Tracé du cycle réel
9. Afin d'ajouter le cycle sur la courbe, créez une troisième suite de données et ajoutez vos points du tableau (en choisissant soit le 2 is soit le 2 réel)
> [!warning] Remarque
> Il faut cliquer sur chaque valeur en maintenant la touche CTRL (du point 1 à 7) puis recliquer à nouveau sur la valeur du point 1 (pour fermer le cycle).

Le cycle apparait lissé par défaut : pour désactiver cela, rendez-vous dans les options de la série (double clic sur le tracé) et décochez l'option "Courbe lissée".

# Objectif et auto-correction
![](Coolprop%20p7%20img2.jpg)