import '../lib/classe_bot.dart';
import '../lib/utils.dart';

void main(List<String> arguments) {

  // 1 - creation de l'Objet Bot avec force 100 et sante 1
  final bot = Robot(100, 1);

  // lireText est une fonction qui peremet de recuperer le speudo
  final username = lireText('Entrez votre pseudo :');

  //  compteur : Me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

  print('Un bot se présente à vous et veut se battre...\n');

  //************
  //  LE Do WHILE
  // Permet d'excecuter le code plusieur fois jusqu'a ce que la condition du while soit juste
  // Il excecute une fois le do avant de verifier la condition
  // 
  // Nous pouvons aussi utiliser le While qui fais la meme chose sauf qu'elle verifie 
  // La condition avant de repeter l'action a l'interieur de celle ci
  /// */
  
  ///*** EXEMPLE  */
  // while(bot.sante > 0){
  //   // Intruction a excecuter
  //   // Intruction a excecuter
  //   // Intruction a excecuter
  // }

  do {
    // Entree
    lireText('Appuyez sur entrée pour lancer les dés');

    // Lancer de Dee aleatoire
    final deeValeur = lanceDee(username);
    bot.sante = bot.sante - deeValeur;

    print('Bot - sante : ${bot.sante}% \n');

    compteur++;
    print('Fin du tour $compteur\n');
  } while (bot.sante > 0);

  print('Le bot a été vaincu !');
}
