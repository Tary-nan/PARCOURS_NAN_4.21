Exercice 1 : Créer et détruire des Bots
# LiveCoding 1
### Debut 15 H 30 - 16 H 50

## Notions abordées :
*  Créer des structures de données (classes)
*  Créer des variables utilisant nos structures de données (objets)
*  Manipuler les données stockées dans nos structures

### But de ce LIVECODING :  
Nous cherchons à créer un jeu vidéo de type RPG dans lequel le joueur devra afronter des ennemis
créés par votre app : des bots.
Ce LIVECODE est le premier de la série, nous créerons une première structure de données ainsi que des
fonctions qui nous seront utiles par la suite.

## 1 - A vous de jouer :
Créez une nouvelle structure de données (classes) appelée "Bot"
Un Bot possède 2 proriétés : la force et la santé

* la force est un entier qui sera utilisé lorsque le Bot voudra attaquer à son tour
* la santé est un entier qui représente le pourcentage de vie du Bot.

## 2 - Créez un objet Bot sur lequel vous allez vous défouler

- Dans votre fonction principale, créez un objet de type Bot, donnez le nom que vous voulez à cette
variable. Initialisez cette nouvelle instance avec une force de 1 et une santé de 100.

- Créez une fonction permettant de lancer les dés
Cette fonction reçoit en paramètre le nom du joueur (chaîne de caractères) et retourne un nombre
aléatoire qui représente le résultat d’un lancé de 2 dés standards (6 faces chacun).
Elle affichera un texte à chaque lancé, qui aura ce format : "NomDuJoueur a lancé les dés et a
obtenu 5".
## C’est parti!

Dans votre fonction principale, créez un scénario de jeu (qui débute juste après la création du Bot
que vous avez faite précédemment).
Voici ce que vous devez faire :
* demander au joueur son pseudo
* lui demander d’appuyer sur "Entrée" pour lancer les dés
* générer un lancer de dés
* retirer au bot autant de points de santé que la valeur du lancer de dés
* afficher le niveau de vie restant au bot
* lui permettre de recommencer tant que le Bot est en vie.


# Exemple d’exécution :

- Quel est votre pseudo ? Tyrion
- Tyrion, appuyez sur entrée pour lancer les dés
- Tyrion lance les dés...5
- Tyrion assène un coup sur le bot avec une force de 5
- Bot - Santé 95%
- Fin du tour 1

- Tyrion, appuyez sur entrée pour lancer les dés
- Tyrion lance les dés...11
- Tyrion assène un coup sur le bot avec une force de 11
- Bot - Santé 84%
- Fin du tour 2
...
- Tyrion, appuyez sur entrée pour lancer les dés
- Tyrion lance les dés...6
+ Tyrion assène un coup sur le bot avec une force de 6
- Bot - Santé 10%
- Fin du tour 13
...
- Tyrion, appuyez sur entrée pour lancer les dés
- Tyrion lance les dés...10
- Tyrion assène un coup sur le bot avec une force de 10
- Fin du tour 14
- Vous gagné la partie!
