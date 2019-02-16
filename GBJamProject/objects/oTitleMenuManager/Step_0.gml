/// @description Insert description here
// You can write your code in this editor

if(currentPosition == 0){
	oTitleStart.image_index = 1;
	oTitleQuit.image_index  = 0;
} else {
	oTitleStart.image_index = 0;
	oTitleQuit.image_index = 1;
}

if(keyboard_check_pressed(vk_up)){
	audio_play_sound(sndMenuSelection,1,false);
	if(currentPosition == 1){
		currentPosition = 0;
	} else {
		currentPosition = 1;
	}
}
if(keyboard_check_pressed(vk_down)){
	audio_play_sound(sndMenuSelection,1,false);
	if(currentPosition == 1){
		currentPosition = 0;
	} else {
		currentPosition = 1;
	}
}


if(currentPosition == 1 && keyboard_check_pressed(vk_enter)){
	game_end();
}
if(currentPosition == 0 && keyboard_check_pressed(vk_enter)){
	audio_play_sound(sndMenuConfirm,1,false);
	room_goto(rControls);
	global.stateGame = GAME.CONTROLS;
	global.roomActual = -1;
}