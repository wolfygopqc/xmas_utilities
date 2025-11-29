# XMAS Utilities - Décoration & neige

**XMAS Utilities**

## 🌟 Fonctionnalités

*   **Système de Neige Permanente **
    *   **Neige :** De la neige partout avec différente configuration possible si on si connais `( il est possible qu'il y ai des bug et j'en suis désoler )`. 

*   **Système de Décorations Optimisé**
    *   **Streaming d'Objets :** Les décorations (sapins, etc.) n'apparaissent que lorsqu'un joueur est à proximité (`Stream Distance`), garantissant **zéro impact sur les performances** lorsque personne n'est dans la zone.
    *   **Configuration Facile :** Ajoutez ou retirez des décorations simplement en modifiant leurs coordonnées dans le fichier `config.lua`.
    *   **Synchronisation Parfaite :** Les décorations sont gérées côté serveur et synchronisées pour tous les joueurs.
    *   **Nettoyage Automatique :** Les objets sont proprement supprimés lors de l'arrêt ou du redémarrage de la ressource pour éviter les doublons.

*   **Outils d'Administration**
    *   **Commande `/scoords` :** Une commande simple pour obtenir les coordonnées et la direction de votre personnage, formatées pour être directement copiées dans le fichier de configuration.

## 🛠️ Installation

1.  Téléchargez les fichiers du script.
2.  Placez le dossier `xmas_utilities` dans votre répertoire `resources`.
3.  Assurez-vous que le nom du dossier est bien `xmas_utilities`.
4.  Ajoutez la ligne suivante dans votre fichier `server.cfg` :
    ```cfg
    ensure xmas_utilities
    ```
5.  Redémarrez votre serveur ou lancez la ressource via la console.

## ⚙️ Configuration

Le fichier `config.lua` est le cœur de votre script. Il est entièrement commenté pour vous permettre de personnaliser facilement l'expérience.

Voici un aperçu du config :

<img width="2584" height="4710" alt="image" src="https://github.com/user-attachments/assets/23276a44-33fb-41b0-8d9e-f9e2e9209d66" />
