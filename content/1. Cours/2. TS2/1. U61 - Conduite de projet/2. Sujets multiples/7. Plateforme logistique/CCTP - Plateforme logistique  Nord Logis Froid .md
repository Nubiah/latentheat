---
tags:
  - enseignement/cours
  - enseignement/TS2
lastUpdated: 2026-11-16
---
## I - Extraits du C.C.T.P

## 1. Généralités

**Mise en situation :**

L'étude concerne les travaux de réalisation de l'installation frigorifique d'une plateforme logistique du froid (entrepôt de prestations 3PL multi-clients) située à Fos-sur-Mer, dans une zone industrialo-portuaire. Le site manipule des denrées périssables pour plusieurs clients (grande distribution, agro-industrie) et est soumis à des exigences de traçabilité des températures et de continuité de service.

L'implantation des principaux éléments est indiquée sur le schéma de l'annexe 1 :

- Un quai de réception et d'expédition réfrigéré (+2/+4 °C) ;
- Deux chambres froides de picking (préparation de commandes) à 0/+2 °C ;
- Une salle de stockage surgelés à -22 °C ;
- Un sas à grand trafic entre zone positive et zone négative ;
- Une salle de valorisation (préparation) à +6/+8 °C ;
- Des bureaux climatisés en mezzanine.

**Process :**

Les denrées arrivent en camions frigorifiques par le quai de réception. Elles sont contrôlées (traçabilité température), puis rangées soit dans les chambres de picking, soit en salle de surgelés. Les commandes sont préparées dans les chambres de picking, franchissent le sas, puis sont expédiées par le quai réfrigéré. La rotation des palettes est quotidienne (flux tendu).

**Données générales :**

Conditions de l'air extérieur :

| Air extérieur | Température | Hygrométrie |
|---|---|---|
| Été | 31 °C | 55 % |
| Hiver | -3 °C | 90 % |

Réseau électrique triphasé 400 V, régime de neutre TN-S. Emprise sur zone classée Seveso seuil haut à proximité : toute charge de fluide frigorigène toxique ou inflammable devra être justifiée auprès de l'ICPE.

**Exigences particulières du maître d'ouvrage :**

- Redondance du froid de production : la perte d'un compresseur ne doit pas entraîner la remontée en température des zones négatives (continuité de service N+1) ;
- Enregistrement des températures de toutes les zones avec horodatage, conservation 2 ans, alarme de dérive avec transmission GSM (traçabilité HACCP) ;
- Portes rapides à ouverture automatique sur le sas, rideaux d'air sur les sas de chargement ;
- Relevé des consommations frigorifiques par zone (sous-comptage électrique).

**Composition des parois :**

- Les murs du bâtiment sont composés de 20 cm de béton et d'une isolation de 12 cm de mousse à base de polyuréthane ;
- Les zones froides internes sont constituées de panneaux sandwich polyuréthane 16 cm (positif) et 20 cm (négatif) ;
- Le plafond est composé d'une dalle de 16 cm de béton et d'une isolation de 16 cm de mousse à base de polyuréthane sous les combles ;
- Le sol est composé d'une dalle de béton de 25 cm, d'une isolation de 8 cm de polystyrène extrudé et d'un heating floor (résistance anti-gel de sol sous la zone négative) ;
- Les combles seront ventilés.

## 2. Limites de prestations

La proposition de l'entrepreneur devra obligatoirement comprendre le transport, toutes les fournitures et toute la main d'œuvre nécessaire au parfait achèvement des installations décrites plus loin ; si l'entrepreneur estime que des anomalies se sont glissées dans ce document, il devra faire l'observation impérativement à la remise de son offre. En outre, la proposition devra comprendre toutes les prestations complémentaires nécessaires à la mise en route, aux essais de fonctionnement, ainsi que la réfection éventuelle des ouvrages jugés défectueux en cours d'exécution ou à la réception.

Compte tenu de l'exigence de continuité de service du maître d'ouvrage, le présent lot aura un marché à obligation de résultat.

Le présent lot aura une obligation de résultat et de moyen sur l'ensemble du chantier.

## 3. Conception de l'installation

**Production de froid :**

*Installation de base : système pompé NH₃ à charge limitée*

Une centrale de production au NH₃ (R717) sera installée dans un local technique dédié, en toiture, avec détection de fuites NH₃ et ventilation de sécurité. La charge totale de fluide sera maintenue inférieure à 150 kg (arrêté du 20 juillet 2023 modifiant l'arrêté du 25 juin 2014 - installations frigorifiques et pompes à chaleur : mesures supplémentaires applicables si charge > 150 kg).

La production sera distribuée par pompes en recirculation liquide/vapeur vers :

- Les évaporateurs des chambres positives (0/+2 °C et +2/+4 °C) ;
- L'évaporateur de la salle de surgelés (-22 °C) via un étage de compression adapté ou un système bi-étagé ;
- Un échangeur de refroidissement d'air neuf pour les bureaux.

La centrale comprendra 3 compresseurs à vis semi-hermétiques (2 en service + 1 de secours en rotation automatique), un séparateur de liquide avec bouteille accumulatrice, un désurchauffeur et une condensation à air avec HP flottante.

*Variante : détente indirecte*

Un système cascade CO₂ (LT, -30/-25 °C d'évaporation) associé à une boucle frigoporteur MP (monopropylène glycol inhibé) pour la partie positive remplacera la centrale NH₃. Le condenseur cascade et le groupe CO₂ seront installés en toiture. La boucle MP alimentera les chambres positives et le quai ; la salle de surgelés restera alimentée par le circuit CO₂ avec évaporateurs pompés ou détente directe.

**Composition de la centrale NH₃ :**

- *Châssis et installation :*
  - Local technique ventilé avec détection NH₃ (seuil d'alarme 25 ppm, seuil de mise en sécurité 200 ppm) ;
  - Pieds anti-vibratiles, anneaux de levage, raccords antivibratiles ;
  - Balises d'avertissement « fluide toxique ».
- *Compresseurs (tri 400 + N) :*
  - Vannes d'isolement aspiration et refoulement ;
  - Prises de pressions H.P. et B.P. sur raccords Schraeder ;
  - Système de décompression d'urgence vers eau (barbotage) pour les soupapes ;
  - Économiseur bi-étagé sur la vis.
- *Système de recirculation :*
  - Bouteille séparatrice HP/LP avec contrôle de niveau (capteur différentiel) ;
  - Deux pompes à liquide (1 service + 1 secours) avec contrôle de débit ;
  - Désurchauffeur sur refoulement ;
  - Retour d'huile filtré et dosé vers les compresseurs.
- *Ligne liquide et sécurité :*
  - Soupapes de sécurité double montée sur vanne trois voies avec évasement vers l'extérieur (entonnoir d'eau pour NH₃) ;
  - Deux filtres déshydrateurs (cartouche compatible NH₃) ;
  - Vanne d'isolement automatique du stockage de liquide en cas de détection de fuite.
- *Organes de contrôle et de sécurité :*
  - Par compresseur : 1 pressostat H.P. et B.P. de sécurité, 1 pressostat différentiel d'huile, 1 boîtier de protection moteur ;
  - Par centrale : pressostats généraux de sécurité, capteurs de pression H.P./B.P. 4/20 mA, sondes de température d'aspiration, extérieure, liquide (4/20 mA) ;
  - Détecteurs de fuite NH₃ en local technique et sur zone de soupapes ;
  - Manomètres H.P./B.P. à bain d'huile Ø 80 mm avec vannes d'isolement.

**Condenseur :**

Un condenseur à air placé en toiture permettra d'évacuer les calories.

*Régulation :*

La pression de condensation sera régulée en HP flottante afin de réduire la consommation en hiver. Elle sera maintenue à une valeur minimale pendant la saison hivernale par modulation de la vitesse de rotation de l'ensemble des ventilateurs d'un même condenseur.

Pour les circuits en parallèle, respecter la symétrie des hélices en fonctionnement pour obtenir une température de sortie liquide homogène.

Contrôle de la HP par capteurs de pression analogique.

**Évaporateurs :**

*Chambres froides positives et quai :*

Les évaporateurs seront de type plafonnier simple flux avec carrosserie aluminium et batteries à tube acier (compatibilité NH₃) et ailettes serties, écartement 6 mm minimum en view des dégivrages. Pour la variante frigoporteur, les batteries seront en tube inox ou cuivre/MEG selon compatibilité.

La détermination de ces appareils sera effectuée en fonction des températures et de l'hygrométrie nécessaire dans les locaux traités, en tenant compte du taux de brassage, des portées de soufflage et de la différence de température.

Conformément aux prescriptions DTU de pose des panneaux des chambres froides, la suspension des évaporateurs sera ramenée sur la structure du bâtiment et non sur les panneaux.

Chaque évaporateur comprendra :

- Une électrovanne de régulation ;
- Un détendeur électronique (ou alimentation liquide pompée avec vanne de régulation selon système) ;
- Une vanne d'isolement manuelle sur l'aspiration et sur le liquide/frigoporteur ;
- Un dégivrage électrique avec fin de dégivrage par sonde ;
- Un éclairage intérieur et une alarme « personnel enfermé ».

*Salle de surgelés :*

Les évaporateurs seront de type plafonnier à écartement d'ailettes 9 mm minimum, dégivrage électrique avec horloge de programmation et réduction de cadence automatique (dégivrage à la demande). Un rideau d'air de porte sera installé sur chaque accès.

Chaque évaporateur comprendra :

- Une électrovanne de régulation ;
- Un détendeur électronique avec régulateur communicant (supervision) ;
- Des vannes d'isolement manuelles ;
- Un cordon chauffant de porte en 24 V ;
- Une alimentation pour clapet de décompression ;
- Une alarme « personnel enfermé ».

## 4. Bilans frigorifiques

**Apports par les denrées :**

- À raison d'un abaissement de température de 4 °C pour les denrées à température positive introduites quotidiennement ;
- À raison d'un abaissement de température de 8 °C pour les denrées introduites en salle de surgelés (recongélation interdite, produits en cours d'abaissement uniquement) ;
- Le quai de réception est exploité par 8 caristes à raison de 8 heures par jour ;
- À raison d'un taux d'occupation de la salle de valorisation de 0,1 personne/m² ;
- Le sas est traversé par 120 palettes par jour (apports d'ouverture de portes à évaluer).

**Bases de calcul :**

| Type | Nombre | HSP | Caractéristiques de l'air à maintenir | Hygrométrie | Puissance frigorifique unitaire (kW) |
|---|---|---|---|---|---|
| Quai réception/expédition réfrigéré | 1 | 5,0 m | +2/+4 °C | 80 % | 96 |
| Chambre de picking 1 | 1 | 5,0 m | 0/+2 °C | 85 % | 44 |
| Chambre de picking 2 | 1 | 5,0 m | 0/+2 °C | 85 % | 44 |
| Salle de surgelés | 1 | 7,0 m | -20/-22 °C | – | 78 |
| Salle de valorisation | 1 | 4,0 m | +6/+8 °C | 70 % | 22 |
| Sas à grand trafic | 1 | 5,0 m | +2/+4 °C | 80 % | 31 |
| Bureaux (climatisation confort) | 1 | – | +20/+26 °C | – | 18 |

Le temps de fonctionnement des compresseurs sera considéré égal à 18 heures par jour (rotation 2 équipes).

## 5. Règlements & normes à respecter

L'installation sera conforme aux normes et règlements en vigueur à la date de signature du Marché et en particulier (liste non exhaustive) :

- À l'arrêté du 25 juin 2014 modifié (arrêté du 20 juillet 2023) relatif aux installations frigorifiques et pompes à chaleur - mesures supplémentaires applicables selon la charge de fluide ;
- Au règlement (UE) n° 2024/573 (F-Gaz) et aux décrets et arrêtés concernant les fluides frigorigènes ;
- À la norme NF EN 378 (1-2-3-4) relative à la conception et la sécurité des installations frigorifiques ;
- À la norme NF P 75-401 relative à l'isolation thermique des bâtiments frigorifiques et des locaux à ambiance régulée ;
- À l'arrêté du 30/09/57 relatif aux mesures de sécurité applicables aux chambres froides ou climatisées ;
- À la réglementation ICPE applicable au site (rubriques 4741/4742/4743 selon charges) ;
- À la Directive des Équipements sous Pression (DESP 2014/68/UE) ;
- Au règlement de sécurité des établissements recevant du public (ERP) ;
- Au code du travail et aux décrets sur la protection des travailleurs (bruit : décret n° 88-405 du 21 avril 1988) ;
- À la norme NF C 15-100 pour les installations électriques.

**Réglementation des appareils à pression :**

- DESP 2014/68/UE : épreuves, vérifications, marques d'identification ;
- Arrêté du 20 novembre 2017 relatif à la surveillance des équipements sous pression ;
- Vérifications périodiques selon l'arrêté du 2 mars 2012 (équipements sous pression frigorifiques).

**Environnement et traçabilité :**

- Décret du 30/06/98 relatif au confinement des installations, à l'obligation de contrôle et d'actions en cas de détection de fuites ;
- Arrêté du 20 août 1985 relatif aux bruits aériens émis dans l'environnement (installation classée) ;
- Registre HACCP : enregistrement continu des températures, archivage 2 ans, alarmes transmises.

Les modifications ou adaptations imposées par les organismes de Contrôle en application des Règlements de Sécurité, des Normes ou des Règles de l'art en vigueur au moment de la remise de l'offre ne feront pas l'objet de travaux supplémentaires.

---

*Note : le document original comporte une annexe 1 (schéma d'implantation de la plateforme) à créer séparément.*
