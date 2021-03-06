import 'dart:io';
import 'dart:math';

int lanceDee(String playerName) {
  final aleatoire = Random();
  final nombreAleatoire = aleatoire.nextInt(6) + 1 + aleatoire.nextInt(6) + 1;
  print('$playerName a lancé les dés et a obtenu la valeur $nombreAleatoire');
  return nombreAleatoire;
}


String lireText(String question) {
  print(question);
  return (stdin.readLineSync()).value;
}


extension valueString on String? {
  String get value => this != null ? this! : '';
}