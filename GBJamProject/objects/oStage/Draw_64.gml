/// @description Insert description here
// You can write your code in this editor
/*
else if(global.stateGame = GAME.TRANSITION){
	draw_text((room_width/2) + 120, (room_height / 2) + 130, "Life: x0" + string(global.hpPlayer) );
	draw_text((room_width/2) + 120, (room_height / 2) + 160, "Babies: " + string(global.babies) );
	draw_text((room_width/2) + 120, (room_height / 2) + 190, "Stage: " + string(roomNextTrue) );
}
else if(global.stateGame = GAME.TRANSITIONDEATH){
	draw_text((room_width/2) + 120, (room_height / 2) + 130, "Life: x0" + string(global.hpPlayer) );
	draw_text((room_width/2) + 120, (room_height / 2) + 160, "Babies: " + string(global.babies) );
	draw_text((room_width/2) + 120, (room_height / 2) + 190, "Stage: " + string(roomActualTrue) );
}
*/
//STAGE
draw_sprite_ext(sBlackNumbers,UnitSubimage,(80+16)*3,45*3,3,3,0,c_white,1);
draw_sprite_ext(sBlackNumbers,DecSubimage,80*3,45*3,3,3,0,c_white,1);
//LIVES
draw_sprite_ext(sBlackNumbers,UnitSubimageL,(80+16)*3,(45+16)*3,3,3,0,c_white,1);
draw_sprite_ext(sBlackNumbers,DecSubimageL,80*3,(45+16)*3,3,3,0,c_white,1);
//BABIES
draw_sprite_ext(sBlackNumbers,UnitSubimageB,(80+16)*3,(45+32)*3,3,3,0,c_white,1);
draw_sprite_ext(sBlackNumbers,DecSubimageB,80*3,(45+32)*3,3,3,0,c_white,1);