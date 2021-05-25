/// Vérifie si le calcul doit etre lancé

// Vérifie sur l'axe horizontal

if position_meeting(x-sprite_width,y,oNumBox) and position_meeting(x+sprite_width,y,oNumBox){
	
	box1 = instance_position(x-sprite_width,y,oNumBox);
	num1 = box1.value;
	
	box2 = instance_position(x+sprite_width,y,oNumBox);
	num2 = box2.value;
	
	calcul = true;
}

// Vérifie sur l'axe vertical

if position_meeting(x,y-sprite_height,oNumBox) and position_meeting(x,y+sprite_height,oNumBox){
	
	box1 = instance_position(x,y-sprite_height,oNumBox);
	num1 = box1.value;
	
	box2 = instance_position(x,y+sprite_height,oNumBox);
	num2 = box2.value;
	
	calcul = true;
}

/// Procéde au calcul

if calcul = true{
	
	if type == "+"{ // Addition	
		newValue = num1 + num2;	
	}
	
		if type == "-"{ // Soustraction	
		newValue = num1 - num2;	
	}
		if type == "X"{ // Multiplication
		newValue = num1 * num2;	
	}
	
		if type == "/"{ // Division
		newValue = num1 / num2;	
	}
	
		if type == "mod"{ // Modulo
		newValue = num1 % num2;	
	}
	
		if type == "euc"{ //Division euclidienne
		newValue = num1 div num2;
	}
	
// Détruit les objets obsolètes	

	instance_destroy(box1)
	instance_destroy(box2)
	instance_destroy(self)
	
// Crée le nouveau bloc num

	inst = instance_create_layer(x,y,"Instances",oNumBox)
	with (inst) value = other.newValue;
}