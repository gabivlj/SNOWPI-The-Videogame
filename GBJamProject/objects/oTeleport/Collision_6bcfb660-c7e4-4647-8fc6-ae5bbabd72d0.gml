
if(oPrueba.done == false && !stop && !idArray[actualI].stop){
	oPrueba.x = teleportToID.x;
	oPrueba.y = teleportToID.y;
	oPrueba.xObj = oPrueba.x;
	oPrueba.yObj = oPrueba.y;
	stop = true;
	teleportToID.stop = true;
	alarm[0] = 60;
	teleportToID.alarm[0] = 60;
}