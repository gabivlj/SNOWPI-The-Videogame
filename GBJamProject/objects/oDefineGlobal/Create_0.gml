global.hpPlayer = 10;
global.babies = 0;
global.arrayRooms = [room1, room2, room3, room4, room5, room6, room7,
	  room11, room12, room13,  room15,
	room16, room8, room17, room18, room19, room20, room10,room9, room21, room14
];
enum GAME {
	MENU,
	ROOMPLAYING,
	ROOMWIN,
	ROOMLOSE,
	TRANSITION,
	TRANSITIONDEATH,
	TRANSITIONWIN,
	CREDITS,
	CONTROLS
}
enum ROOM {
	STAGE1,
	STAGE2,
	STAGE3,
	STAGE4,
	STAGE5,
	STAGE6,
	STAGE7,
	STAGE8,
	STAGE9,
	STAGE10,
	STAGE11,
	STAGE12,
	STAGE13,
	STAGE14,
	STAGE15,
	STAGE16,
	STAGE17,
	STAGE18,
	STAGE19,
	STAGE20,
	STAGE21,
	STAGE22
	//SI QUEREIS AÑADIR MAS ROOMS, AÑADIDLAS AQUI. Y DESPUES AÑADIDLAS AL ARRAY DE ARRIBA.
}

global.stateGame = GAME.MENU; //global.stateGame = GAME.MENU;
global.roomActual = -1;
global.firstTransition = true;
