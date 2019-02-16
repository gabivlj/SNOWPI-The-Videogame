/// @description Insert description here
// You can write your code in this editor


if(global.stateGame ==GAME.TRANSITION){
	//STAGE CALCULATION
	nextRoom = oPrueba.roomNextTrue;
	UnitSubimage = nextRoom;
	DecSubimage = nextRoom / 10;
	DecSubimage = floor(DecSubimage);
	UnitSubimage -= (DecSubimage * 10);
	//LIVES CALCULATION
	actualLives = global.hpPlayer;
	UnitSubimageL = actualLives;
	DecSubimageL = actualLives/10;
	DecSubimageL = floor(DecSubimageL);
	UnitSubimageL -= (DecSubimageL * 10);
	//BABIES CALCULATION
	actualBabies = global.babies;
	UnitSubimageB = actualBabies;
	DecSubimageB = actualBabies/10;
	DecSubimageB = floor(DecSubimageB);
	UnitSubimageB -= (DecSubimageB * 10);
}

if(global.stateGame == GAME.TRANSITIONDEATH){
	//STAGE CALCULATION
	nextRoom = oPrueba.roomActualTrue;
	UnitSubimage = nextRoom;
	DecSubimage = nextRoom / 10;
	DecSubimage = floor(DecSubimage);
	UnitSubimage -= (DecSubimage * 10);
	//LIVES CALCULATION
	actualLives = global.hpPlayer;
	UnitSubimageL = actualLives;
	DecSubimageL = actualLives/10;
	DecSubimageL = floor(DecSubimageL);
	UnitSubimageL -= (DecSubimageL * 10);
	//BABIES CALCULATION
	actualBabies = global.babies;
	UnitSubimageB = actualBabies;
	DecSubimageB = actualBabies/10;
	DecSubimageB = floor(DecSubimageB);
	UnitSubimageB -= (DecSubimageB * 10);
}
