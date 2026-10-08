# Gestion de demandes — SAP CAP + Fiori Elements

Projet personnel réalisé pour mettre en pratique SAP CAP, OData et Fiori.
Statut : en cours de développement.

## Objectif
Application simple de gestion de demandes (type demandes IT) : un service
OData exposé par SAP CAP et une interface Fiori Elements pour les consulter.

## Technologies
- SAP CAP (Cloud Application Programming Model), Node.js
- OData V4
- SAP Fiori Elements (annotations)
- SQLite (base de développement)

## Fonctionnalités actuelles
- Validation côté serveur (handler Node.js) : titre obligatoire, priorité contrôlée
- Modèle de données `Demandes` (titre, description, statut, priorité)
- Service OData `DemandesService`
- Liste et page de détail Fiori Elements

## Lancer le projet
1. Installer Node.js et l'outil CAP : `npm install -g @sap/cds-dk`
2. Cloner le dépôt, puis `npm install`
3. `cds watch`
4. Ouvrir http://localhost:4004

## À venir
- Création et modification de demandes
- Interface SAPUI5 personnalisée
- Déploiement sur SAP BTP