//Vérifie que le niveau soit débloqué

switch(valeur){
	
case 1 :
	if oGame.lvl1_unlocked = true{
	global.cameraX = oCamera.x;
	global.cameraY = oCamera.y;
	room_goto(cible);
	}
	else show_message("Level Locked");
	break;
	
case 2 :
	if oGame.lvl2_unlocked = true{
	global.cameraX = oCamera.x;
	global.cameraY = oCamera.y;
	room_goto(cible);
	}
	else show_message("Level Locked");
	break;
	
case 3 :
	if oGame.lvl3_unlocked = true{
	global.cameraX = oCamera.x;
	global.cameraY = oCamera.y;
	room_goto(cible);
	}
	else show_message("Level Locked");
	break;
	
case 4 :
	if oGame.lvl4_unlocked = true{
	global.cameraX = oCamera.x;
	global.cameraY = oCamera.y;
	room_goto(cible);
	}
	else show_message("Level Locked");
	break;
}