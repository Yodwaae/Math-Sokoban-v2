// Affiche la valeur du bloc

if frac(valeur) != 0{
	
	// Mise sous forme de fraction 
	
	if (frac(valeur) >= 0.333 and frac(valeur) < 0.334) or (frac(valeur) >= 0.666 and frac(valeur) < 0.667) or (frac(valeur) <= -0.333 and frac(valeur) > -0.334) or (frac(valeur) <= -0.666 and frac(valeur) > -0.667){
		
		if (frac(valeur) >= 0.333 and frac(valeur) < 0.334) or (frac(valeur) <= -0.333 and frac(valeur) > -0.334){
		
			val = (valeur -(frac(valeur))) * 3 + 1*sign(valeur);
			denom = 3;
		}
	
		if (frac(valeur) >= 0.666 and frac(valeur) < 0.667) or (frac(valeur) <= -0.666 and frac(valeur) > -0.667){
	
			val = (valeur - frac(valeur)) * 3 + 2*sign(valeur);
			denom = 3;
		}
	}
	else{
	
		val = valeur;
		val = val * 10;
		denom = 10;
	
		if frac(val) !=0{
		
			val = val*10;
			denom = 100;
			val = val - frac(val);
		}
	
		for (var i = 1; i<51; i += 1){
		
			a = val mod i;
			b = denom mod i;
		
			if a == 0 and b == 0 pgcd = i;
		}
	
		val = val/pgcd;
		denom = denom/pgcd;
		
	}

	draw_set_color(c_green)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y-4,string(val) + "/" + string(denom)) 
}
else {
	draw_set_color(c_green)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y-4,string(valeur)) 
}