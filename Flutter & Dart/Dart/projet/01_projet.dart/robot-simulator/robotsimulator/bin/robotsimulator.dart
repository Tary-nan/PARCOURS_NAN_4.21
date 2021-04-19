import '../lib/robot-simulator.dart';

void main(List<String> arguments) {
  
///********************************************** */
///
/// 1 - creation d'instance d'objet
///
  var robot1 = Robot(Position(0, 0), Orientation.nord);
  var robot2 = Robot(Position(0, -1), Orientation.nord);

print("""

///********************************************** */
/// 1 - creation d'instance d'objet

""");
print(robot1); // Instance of Robot


print("""

///********************************************** */
/// 1 - afficher une proprieté de l'objet

""");
// afficher une proprieté de l'objet
print(robot1.orientation); // affiche l'oientation

///********************************************** */
///
/// 2 - changement de position
///
  
robot1 = Robot(Position(0, 0), Orientation.ouest);
robot2 = Robot(Position(0, -1), Orientation.ouest);

///********************************************** */
///
/// 3 - Série d'instruction
///

// 1 - Du point de coordonneer (7,3) face nord, Vérifie la nouvelle position du 
// robot et dans quelle direction il pointe instruction : DAAGAG
// 
// EN FONCTION DE L'INSTRUCTION ENTRER 
// L'ABSCISSE ET L'ORDONNEE VONT AUSSI CHANGER
// 
// EXEMPLE :


print("""

///********************************************** */
/// 1 - Du point de coordonneer (7,3)
/// excecuter l' instruction : DAAGAG
///  Solution : D'apres l'enoncé 
/// # l'exécution de ce flux d'instructions devrait le laisser à {9, 4} face à l'ouest.

""");

var result = Robot(Position(7, 3), Orientation.nord);
result.seDeplacer('DAAGAG');

///************************** */
/// JE VERIFIE MES NOUVELLES COORDONNER
///
///

// 
print("abscisse x : ${result.position.x}");
print("ordonner x : ${result.position.y}");
print("Direction x : ${result.orientation}");


print("""

///********************************************** */
/// FIN D EXCECUTION

""");

}
