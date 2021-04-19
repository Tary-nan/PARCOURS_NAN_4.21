/// 
/// LA CREATION D'UN ENUM NOUS PERMET DE CREER DES ETATS : C'est UN PEU 
/// DES DONNEER QU'ON CONNAIS A L'AVANCE
/// comme allumer - eteint
///
///dans notre exemple c'est 
enum Orientation { nord, est, sud, ouest }



/// Je Créer 
/// Mon Objet Position
/// pour representer les coordonner du robot
class Position {
  int x, y;
  //
  //Le constructeur de l'objet Position
  Position(this.x, this.y);
}

/// Je Créer 
/// Mon Objet Robot
///
class Robot {

  /// Les attributs de ma classes sont les suivantes
  ///
  Orientation orientation;
  Position position;

/// Je créer mon constructeur
/// 
///
  Robot(this.position, this.orientation);

  void seDeplacer(String instructions) {

    /// 
    /// JE COMPTE LE NOMBRE DE CARACTERE DE L'INSTRUCTION
    /// ET A CHAQUE INSTRUCTION JE VERIFIE SI JE DOIS TOURNER A DROITE OU A GAUCHE OU AVANCER
    /// 

    for (var i = 0; i < instructions.length; i++) {
      if (instructions[i] ==  'D') {
         tournerDansLeSensDeLAiguilleDuneMontre();
      }else if(instructions[i] ==  'G'){
        tournerDansLeSensInverseDeLAiguilleDuneMontre();
      }else if(instructions[i] ==  'A'){
        avancer();
      }else{
        print('l\' un de vos caractère ne figure pas dans nos instruction');
      }
    }
  }

  void tournerDansLeSensDeLAiguilleDuneMontre() {
    switch (orientation) {
      case Orientation.nord:
        orientation = Orientation.est;
        break;
      case Orientation.est:
        orientation = Orientation.sud;
        break;
      case Orientation.sud:
        orientation = Orientation.ouest;
        break;
      case Orientation.ouest:
        orientation = Orientation.nord;
        break;
    }
  }

  void tournerDansLeSensInverseDeLAiguilleDuneMontre() {
    switch (orientation) {
      case Orientation.nord:
        orientation = Orientation.ouest;
        break;
      case Orientation.ouest:
        orientation = Orientation.sud;
        break;
      case Orientation.sud:
        orientation = Orientation.est;
        break;
      case Orientation.est:
        orientation = Orientation.nord;
        break;
    }
  }

  void avancer() {
    switch (orientation) {
      ///
      /// Lorsque je suis au nord
      /// avancer correspond a aller vers le haut d'un pas ou de +1 ou ++ 
      ///
      case Orientation.nord :
        position.y++;
        // ou 
        // position = position.y + 1
        break;
      case Orientation.ouest:
        position.x--;
        // ou 
        // position = position.x - 1
        break;
      case Orientation.sud:
        position.y--;
        break;
      case Orientation.est:
        position.x++;
        break;
    }
  }
}


