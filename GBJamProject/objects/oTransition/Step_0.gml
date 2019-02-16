/// @description SWITCH
// TODO: HACER QUE ESPERE 5 SEGUNDOS
if(done){
	if(room == rTransition){
		switch(global.roomActual){
			case -1:
				global.roomActual = ROOM.STAGE1;
				room_goto(global.arrayRooms[ROOM.STAGE1]);
				global.stateGame = GAME.ROOMPLAYING; 
				break;
			case ROOM.STAGE1:
				global.roomActual = ROOM.STAGE2;
				room_goto(global.arrayRooms[ROOM.STAGE2]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE2:
				global.roomActual = ROOM.STAGE3;
				room_goto(global.arrayRooms[ROOM.STAGE3]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE3:
				global.roomActual = ROOM.STAGE4;
				room_goto(global.arrayRooms[ROOM.STAGE4]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE4:
				global.roomActual = ROOM.STAGE5;
				room_goto(global.arrayRooms[ROOM.STAGE5]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE5:
				global.roomActual = ROOM.STAGE6;
				room_goto(global.arrayRooms[ROOM.STAGE6]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE6:
				global.roomActual = ROOM.STAGE7;
				room_goto(global.arrayRooms[ROOM.STAGE7]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE7:
				global.roomActual = ROOM.STAGE8;
				room_goto(global.arrayRooms[ROOM.STAGE8]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE8:
				global.roomActual = ROOM.STAGE9;
				room_goto(global.arrayRooms[ROOM.STAGE9]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE9:
				global.roomActual = ROOM.STAGE10;
				room_goto(global.arrayRooms[ROOM.STAGE10]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE10:
				global.roomActual = ROOM.STAGE11;
				room_goto(global.arrayRooms[ROOM.STAGE11]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE11:
				global.roomActual = ROOM.STAGE12;
				room_goto(global.arrayRooms[ROOM.STAGE12]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE12:
				global.roomActual = ROOM.STAGE13;
				room_goto(global.arrayRooms[ROOM.STAGE13]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE13:
				global.roomActual = ROOM.STAGE14;
				room_goto(global.arrayRooms[ROOM.STAGE14]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE14:
				global.roomActual = ROOM.STAGE15;
				room_goto(global.arrayRooms[ROOM.STAGE15]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE15:
				global.roomActual = ROOM.STAGE16;
				room_goto(global.arrayRooms[ROOM.STAGE16]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE16:
				global.roomActual = ROOM.STAGE17;
				room_goto(global.arrayRooms[ROOM.STAGE17]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE17:
				global.roomActual = ROOM.STAGE18;
				room_goto(global.arrayRooms[ROOM.STAGE18]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE18:
				global.roomActual = ROOM.STAGE19;
				room_goto(global.arrayRooms[ROOM.STAGE19]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE19:
				global.roomActual = ROOM.STAGE20;
				room_goto(global.arrayRooms[ROOM.STAGE20]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE20:
				global.roomActual = ROOM.STAGE21;
				room_goto(global.arrayRooms[ROOM.STAGE21]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE21:
				global.roomActual = rWin;
				room_goto(rWin);
				global.stateGame = GAME.TRANSITIONWIN;
				break;
			
			default:
				global.roomActual = -2;
				show_debug_message("ERROR AL ENCONTRAR ROOM!!!!!!!!!!!!!");
				room_goto(rWin);
				global.stateGame = GAME.TRANSITIONWIN;
		}	
	}
	else{
		switch(global.roomActual){
			case ROOM.STAGE1:
				global.roomActual = ROOM.STAGE1;
				room_goto(global.arrayRooms[ROOM.STAGE1]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE2:
				global.roomActual = ROOM.STAGE2;
				room_goto(global.arrayRooms[ROOM.STAGE2]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE3:
				global.roomActual = ROOM.STAGE3;
				room_goto(global.arrayRooms[ROOM.STAGE3]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE4:
				global.roomActual = ROOM.STAGE4;
				room_goto(global.arrayRooms[ROOM.STAGE4]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
				break;
			case ROOM.STAGE5:
				global.roomActual = ROOM.STAGE5;
				room_goto(global.arrayRooms[ROOM.STAGE5]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE6:
				global.roomActual = ROOM.STAGE6;
				room_goto(global.arrayRooms[ROOM.STAGE6]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE7:
				global.roomActual = ROOM.STAGE7;
				room_goto(global.arrayRooms[ROOM.STAGE7]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE8:
				global.roomActual = ROOM.STAGE8;
				room_goto(global.arrayRooms[ROOM.STAGE8]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE9:
				global.roomActual = ROOM.STAGE9;
				room_goto(global.arrayRooms[ROOM.STAGE9]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE10:
				global.roomActual = ROOM.STAGE10;
				room_goto(global.arrayRooms[ROOM.STAGE10]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE11:
				global.roomActual = ROOM.STAGE11;
				room_goto(global.arrayRooms[ROOM.STAGE11]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE12:
				global.roomActual = ROOM.STAGE12;
				room_goto(global.arrayRooms[ROOM.STAGE12]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE13:
				global.roomActual = ROOM.STAGE13;
				room_goto(global.arrayRooms[ROOM.STAGE13]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE14:
				global.roomActual = ROOM.STAGE14;
				room_goto(global.arrayRooms[ROOM.STAGE14]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
				break;
			case ROOM.STAGE15:
				global.roomActual = ROOM.STAGE15;
				room_goto(global.arrayRooms[ROOM.STAGE15]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE16:
				global.roomActual = ROOM.STAGE16;
				room_goto(global.arrayRooms[ROOM.STAGE16]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE17:
				global.roomActual = ROOM.STAGE17;
				room_goto(global.arrayRooms[ROOM.STAGE17]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE18:
				global.roomActual = ROOM.STAGE18;
				room_goto(global.arrayRooms[ROOM.STAGE18]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE19:
				global.roomActual = ROOM.STAGE19;
				room_goto(global.arrayRooms[ROOM.STAGE19]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE20:
				global.roomActual = ROOM.STAGE20;
				room_goto(global.arrayRooms[ROOM.STAGE20]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE21:
				global.roomActual = ROOM.STAGE21;
				room_goto(global.arrayRooms[ROOM.STAGE21]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
			case ROOM.STAGE22:
				global.roomActual = ROOM.STAGE22;
				room_goto(global.arrayRooms[ROOM.STAGE22]);
				global.stateGame = GAME.ROOMPLAYING;
				break;
		}
	}
}