

// OBJECTIFS
// 1. Definit une fonction
// 2. Passer un parametre a la fonction
// 3. Returner la valeur de la fonction 

void main() {

	trouverPerimeter(4, 2);
	trouverPerimeterAvecParametreOptionnel(length:4, largeur:2);

	int result = multiplier(10, 5);
	print("Le resulat est  $result");
}

void trouverPerimeter(int length, int largeur) {

	int perimeter = 2 * (length + largeur);
	print("Le perimetre est $perimeter");
}

void trouverPerimeterAvecParametreOptionnel({int length, int largeur}) {

	int perimeter = 2 * (length + largeur);
	print("Le perimetre est $perimeter");
}

int multiplier(int length, int largeur) {

	int resultat = length * largeur;
	return resultat;
}
