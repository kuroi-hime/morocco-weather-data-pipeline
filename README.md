# morocco-weather-data-pipeline
 une solution permettant de récupérer les prévisions météorologiques des prochains jours, d'identifier les périodes à risque et d'aider les responsables à anticiper les éventuelles perturbations.

## contexte
Une entreprise de livraison et de logistique opère dans plusieurs villes marocaines. Les conditions météorologiques peuvent impacter ses opérations, notamment en cas de fortes précipitations, de vents importants ou de températures extrêmes.

L'entreprise souhaite donc mettre en place une solution permettant de <strong>récupérer les prévisions météorologiques des prochains jours, d'identifier les périodes à risque et d'aider les responsables à anticiper les éventuelles perturbations.</strong>

## Objectif
La solution devra permettre de répondre à la question :
<strong>
Quelles villes et quelles périodes présentent le plus grand risque météorologique dans les prochains jours ?
</strong>
-------------------------------------------------------------------------------------------
Le résultat devra permettre à un responsable opérationnel de :
* comparer les conditions météorologiques entre les villes.
* identifier les périodes défavorables.
* anticiper les risques pour les livraisons.
* adapter l'organisation des opérations.

## Sources de données
Le  pipeline de données complet à partir de deux sources :
1. SimpleMaps : [fichier CSV contenant les villes marocaines et leurs coordonnées.](https://simplemaps.com/data/ma-cities)
2. Open-Meteo : [API fournissant les prévisions météorologiques quotidiennes.](https://api.open-meteo.com/v1/forecast)

## Variables météorologiques sélectionnées
les paramètres sélectionnés dans la section Daily Weather Variables sont les suivants:
* Maximum Temperature
* Minimum Temperature
* Precipitation Sum
* Precipitation Probability Max
* Maximum Wind Speed
* Maximum Wind Gusts
* Weather Code

<!-- ## schéma du data warehouse -->

## pipeline
<strong>Le pipeline suit une architecture Bronze → Silver → Gold.</strong>

### Étape 1 — Extraction / Bronze
Dans cette étape on collecte nos données brutes, en passant par:
1. La récupération du dataset des villes marocaines.
2. L'utilisation des coordonnées des villes pour interroger l'API Open-Meteo.
3. La récupération des prévisions météorologiques quotidiennes des trois prochains jours.
4. La conservation des données brutes dans bronze/.

Durant cette étape, on doit veiller aux erreurs lors des appels API telles que : timeout, erreurs HTTP, réponses invalides, etc.

## Étape 2 — Nettoyage / Silver
Dans cette étapes on nettoient nos données brutes, en passant par:
1. La standardisation des types et des dates:
    * aplatir les dicts en types normals.
    * inspecter les types via .dtypes.
    * corriger les types éronnés.
2. Le contrôle de la qualité des données par:
    * vérification et suppression des doublants.
    * vérification et correction des types des données.
    * vérification des valeurs manquantes.
3. La conservation des données nettoyées dans silver/.

<!-- ## instructions d'installation et d'exécution -->

<!-- ## captures d'écran du dashboard. -->