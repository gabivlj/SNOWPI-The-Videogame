var local = 0; 
globalEnTodoElObjecto = 0;

move_snap(8,8);
//Variables
falling = false;
finishFalling = false;
StopTime=0;
xObj = x;
yObj = y;
finished = true;
canHit = false;
roomNextTrue = global.roomActual+2;
roomActualTrue = global.roomActual+1;
time1 = true;
enum STATE {
	IDLE = 0, // 0
	WALK, // 1
	OBJPICKAXE, // 2
	ONICE,
	ONARROW,
	DAMAGE,
	MOVINGOBJ,
	TELEPORT
}
canTeleport = false;
enum SPRITE {
	IDLERIGHT,
	IDLELEFT,
	WALKLEFT,
	WALKRIGHT,
	WALKUP,
	WALKDOWN,
	WALKWITHBABY,
	WALKFIRERIGHT,
	WALKFIRELEFT,
	IDLERIGHTFIRE,
	IDLELEFTFIRE
}
enum FACEX {
	NONE = 0,
	RIGHT = 1,
	LEFT = -1,
}
enum FACEY {
	NONE = 0,
	UP = -1,
	DOWN = 1,
}
// OBJECTS //
enum OBJECTS {
	PICKAXE, 
	STOPTIME,
	BOOTSICE,
	OFIRE,
	ONELIFE
}
cancelIce = false;
arrayObj = [0, false, false, false]; // pickaxe, stoptime, bootsice, fire
hasUsed = false;
// MOV FACES//
faceX = FACEX.RIGHT;
faceY = FACEY.NONE;
faceXTrue = FACEX.RIGHT;

// STATE
playerState = STATE.IDLE;

//MOVES
done = false;
cancel = false;
arrayArrow = [false, false, false, false]; // UP,RIGHT,DOWN,LEFT. CLOCKWISE

//SPRITES
arraySprite = [sPrueba, sPlayerLeftIdle,sWalking2, sWalking, sWalking, sWalking,
				sWalkingWithBaby, sWalkingFireRight, sWalkingFireLeft
				, sIdleFireRight, sIdleFireLeft];

sprite = arraySprite[STATE.IDLE]; // sPrueba
show_debug_message(arraySprite);
sprite_index = sprite;
cantMove = false;
instanceIce = 0;
cangoonice = false;

start_timer = false;









// ARROWS VARS
get = false;
doneY = false;
doneX = false;
cancelArrow = false;
