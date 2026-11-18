---
tags:
  - enseignement/cours
  - enseignement/LP
lastUpdated: 2026-09-29
---
> [!note] Objectif
> Réaliser un bilan thermique simple d'une chambre froide, déterminer la puissance frigorifique nécessaire et analyser la performance du compresseur.

## Mise en situation
Vous êtes chargé d'affaires pour une entreprise d'installations frigorifiques. Un client, M. Dubois, boucher de profession, souhaite installer une chambre froide à température positive pour stocker ses viandes. 
Votre mission est de calculer la puissance frigorifique nécessaire pour son installation et de déterminer la consommation électrique du groupe froid à proposer. 

## Données techniques du projet
- Dimensions internes de la chambre : L 4 x l 3 x h 2.5 m
- Températures : 
	- Consigne : $T_{int}=+2°C$
	- Extérieur : $T_{Ext}=+32°C$
- Isolation : les parois, le sol et le plafond sont constitués de panneaux sandwish de 10 cm d'épaisseur. Le coefficient de transmission thermique global de ces panneaux est $U = 0.21$ W.(m$^2$.K)$^{-1}$
- Apports thermiques divers :
	- Eclairage : 100 W
	- Présence humaine : 1 personne travaillant 2h/jour (on comptera un apport moyen de 50 W sur 24h)
	- Renouvellement d'air (ouvertures de porte) : on estime un apport de 450 W sur 24h
- Marchandises : le client rentrera chaque jour 150 kg de viande à une température de +20°C
	- Chaleur massique de la viande : $C_{Viande}=3500$ $J.kg^{-1}.K^{-1}$
	- Temps de refroidissement souhaité : 8 heures
- Groupe frigorifique : le groupe envisage a un coefficient de performance (EER) de 2.8
## Rappel de formules
- Transmission à travers une paroi : $P=U.S.\Delta \Theta$
- Energie sensible : $Q=m.C.\Delta \Theta$
- Coefficient de performance : $COP=\frac{P_{Frigo}}{P_{Elec}}$

# Travail à réaliser
## Partie 1 - Bilan thermique de la chambre
1. Calculer la surface d'échange ($S$) avec l'extérieur. 
   La chambre est dans un espace libre dans un entrepôt.
2. Calculer les apports par transmission ($P_{parois}$) 
3. Calculer les apports par la marchandise ($P_{Marchandises}$)
4. Calculer la puissance frigorifique requise ($P_{Frigo}$)
   Appliquer un facteur de sécurité de 10%
## Partie 2 - Caractéristiques du groupe froid
5. Déterminer la puissance électrique absorbée ($P_{Elec}$)
6. Déterminer la puissance rejetée au condenseur ($P_{Condenseur}$)

