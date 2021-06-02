if (global.LEVEL_UNLOCKED) >= valeur{
	room_goto(cible)
}
else {
	show_message("Locked")
}