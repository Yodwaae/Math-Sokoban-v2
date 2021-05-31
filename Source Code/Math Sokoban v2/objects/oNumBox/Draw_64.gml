// Intercepte les valeurs supérieur à 10 000
if valeur >= 10000{
	
		draw_set_color(c_maroon)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(x,y-6,"error") 
	
}
else{

	// Affiche la valeur du bloc

	if frac(valeur) != 0{
	
		// Mise sous forme de fraction 
	
			val = valeur;
		
			for (var i = 2;1 > 0; i +=1){
			
				a = val *i;
			
				if frac(a) == 0{
				
					numerator = a;
					denom = i;
					break
				}
		
			}

		draw_set_color(c_green)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(x,y-6,string(numerator) + "/" + string(denom)) 
	}
	else {
		draw_set_color(c_green)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(x,y-6,string(valeur)) 
	}
}