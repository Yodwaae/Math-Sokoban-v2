// Vérifie l'éligibilité du bloc num

if other.typeD == typeD {
	
}
else{
	
	num1 = other.valeur;
	
	deviation = false;
	
	/// Procéde au calcul

	if typeD == "^2"{ // Carré	
		newValue = sqr(num1);	
	}
	
	if typeD == "^3"{ // Cube
		newValue = sqr(num1) * num1;	
	}

	if typeD == "inv"{ // Inverse
		if num1 == 0 newValue = 0;
		else newValue = -num1;	
	}
	
	if type == "opp"{ // Opposé
		if num1 != 0 newValue = 1/num1;	
		else newValue =0
	}
	
	if typeD == "sqrt" or typeD == "^1/2"{ // Racine carré
		newValue = sqrt(num1);
	}
	
	
	// Détruit les objets obsolètes	

	instance_destroy(other)
	
	// Crée le nouveau bloc num

	inst = instance_create_layer(x,y,"Instances",oNumBox)
	with (inst){
		newB = true;
		valeur = other.newValue;
		typeD = other.typeD;
		if valeur >= 10000 image_index = 1;
	
	}
}