/// @description Insert description here
// You can write your code in this editor
if(timer == 0){
	room_goto(rTransition);
	global.stateGame = GAME.TRANSITION;
	global.roomActual = -1;
} else {
	timer--;
}