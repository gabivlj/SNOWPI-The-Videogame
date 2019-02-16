if(!canHit){
	if(arrayObj[OBJECTS.OFIRE] =! true){
		canHit = true;
		alarm[3] = 30;
		alarm[4] = 1;
		image_blend = c_red;
		global.hpPlayer--;
		room_goto(rTransitionDeath);
		global.stateGame = GAME.TRANSITIONDEATH;
	}
}