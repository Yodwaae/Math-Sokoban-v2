//Affiche la valeur

draw_self();
draw_set_color(c_green)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x,y-6,string(valeur)) 

switch(valeur){
	
case 1 :
	if oGame.lvl1_unlocked = true image_index = 0;
	else image_index = 2;
	break;
	
case 2 :
	if oGame.lvl2_unlocked = true image_index = 0;
	else image_index = 2;
	break;
	
case 3 :
	if oGame.lvl3_unlocked = true image_index = 0;
	else image_index = 2;
	break;
	
case 4 :
	if oGame.lvl4_unlocked = true image_index = 0;
	else image_index = 2;
	break;
}