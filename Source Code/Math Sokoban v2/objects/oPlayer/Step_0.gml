// Avancer (w)

if keyboard_check_pressed(ord("W")){
	image_angle = 90;
	//numVer = instance_position(x,y - sprite_height,oNumBox);
	if position_meeting(x, y - sprite_height, oWall) or instance_position(x,y-sprite_height,oNumBox).value >99 or (position_meeting(x,y - sprite_height, oBoxParent) and !position_empty(x, y - 2*sprite_height)){	

		y = y	
	}
	else y = y - sprite_height;
}

// Reculer (s)

if keyboard_check_pressed(ord("S")){
	image_angle = 270;
	if position_meeting(x, y + sprite_height, oWall) or (position_meeting(x,y + sprite_height, oBoxParent) and !position_empty(x, y + 2*sprite_height)){	
		y = y	
	}
	else y = y + sprite_height;
}

//Droite (d)

if keyboard_check_pressed(ord("D")){
	image_angle = 0;
	if position_meeting(x + sprite_width, y, oWall) or (position_meeting(x + sprite_width,y, oBoxParent) and !position_empty(x + 2*sprite_width, y)){
		x = x
	}
	else x = x + 32;	
}

// Gauche (a)

if keyboard_check_pressed(ord("A")){
	image_angle = 180;
	if position_meeting(x - sprite_width, y, oWall) or (position_meeting(x - sprite_width,y, oBoxParent) and !position_empty(x - 2*sprite_width, y)){	
		x = x	
	}
	else x = x - sprite_width;	
}
