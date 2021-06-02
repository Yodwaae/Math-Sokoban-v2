// Débloque le niveau suivant

switch(nextRoom){
	
case 1 : 
	oGame.lvl2_unlocked = true;
	break;

case 2 : 
	oGame.lvl3_unlocked = true;
	break;
	
case 3 : 
	oGame.lvl4_unlocked = true;
	break;
	
default :
	oGame.lvl1_unlocked = true;
	
}

room_goto(rLevelSelection)