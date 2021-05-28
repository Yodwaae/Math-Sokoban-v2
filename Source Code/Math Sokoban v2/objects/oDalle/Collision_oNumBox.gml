// Vérifie l'éligibilité du bloc num

if other.typeD == typeD {
	
}
else{
	
	num1 = other.valeur;
	
	/// Procéde au calcul

	if typeD == "^2"{ // Carré	
		newValue = sqr(num1);	
	}
	
	if typeD == "^3"{ // Cube
		newValue = sqr(num1) * num1;	
	}

	if typeD == "inv"{ // Inverse
		newValue = -num1;	
	}
	
	if typeD == "opp"{ // Opposé
		newValue = 1/num1;	
	}
	
	if typeD == "sqrt"{ // Racine carré
		newValue = sqrt(num1);	
	}
	
	
	// Détruit les objets obsolètes	

	instance_destroy(other)
	
	// Crée le nouveau bloc num

	inst = instance_create_layer(x,y,"Instances",oNumBox)
	with (inst){
		valeur = other.newValue;
		typeD = other.typeD;
	}
}