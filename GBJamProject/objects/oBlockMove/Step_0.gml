if(gonnaGetItFromLeft) {
	if(!done){
		xObj = x + ((sprite_width)) ;
	}
	if(place_meeting(xObj, y, oBlock) or place_meeting(xObj, y, oBall) or place_meeting(xObj, y, oArrow)
		or place_meeting(xObj, y, oPingu) or place_meeting(xObj, y, oBaby) or place_meeting(xObj, y, oBlockMove)
		or place_meeting(xObj, y, oBallBig)
	){
		cancel = true;
		oPrueba.cancel = true;
		oPrueba.x = oPrueba.xInit;
		oPrueba.xObj = x;
		oPrueba.done = false;
	}
		if(!cancel){
			done = true;
			if(x == xObj){ 
				done = false;
				gonnaGetItFromLeft = false;
			}
			else x += 2;
		}
		if(cancel) {  gonnaGetItFromLeft = false;}
		cancel = false;
}
else if(gonnaGetItFromRight) {
	if(!done){
		xObj = x + ( -1 * (sprite_width)) 
	}
	if(place_meeting(xObj, y, oBlock) or place_meeting(xObj, y, oArrow) or place_meeting(xObj, y, oBall)
		or place_meeting(xObj, y, oPingu) or place_meeting(xObj, y, oBaby) or place_meeting(xObj, y, oBlockMove)
		or place_meeting(xObj, y, oBallBig)
	){
		cancel = true;
		oPrueba.cancel = true;
		oPrueba.x = oPrueba.xInit;
		oPrueba.xObj = x;
		oPrueba.done = false;
	}
	if(!cancel){
			done = true;
			if(x == xObj){
				done = false;
				gonnaGetItFromRight = false;
			}
			else x += -1 * 2; 
		}
		if(cancel) {  gonnaGetItFromRight = false;}
		cancel = false;
}
else if(gonnaGetItFromUp) {
	if(!done){
		yObj = y + ( -1 * (sprite_height)) 
	}
	if(place_meeting(x, yObj, oBlock) or place_meeting(x, yObj, oBall) or place_meeting(x, yObj, oArrow)
		or place_meeting(x, yObj, oPingu) or place_meeting(x, yObj, oBaby) or place_meeting(x, yObj, oBlockMove)
		or place_meeting(x, yObj, oBallBig)
	){
		cancel = true;
		oPrueba.cancel = true;
		oPrueba.y = oPrueba.yInit;
		oPrueba.yObj = y;
		oPrueba.done = false;
	}
		if(!cancel){
			done = true;
			if(y == yObj){
				done = false;
				gonnaGetItFromUp = false;
			}
			else y += -1 * 2; 
		}
		if(cancel) {  gonnaGetItFromUp = false;}
		cancel = false;
}
else if(gonnaGetItFromDown) {
	if(!done){
		yObj = y + ( 1 * (sprite_height)) ;
	}
	if(place_meeting(x, yObj, oBlock) or place_meeting(x, yObj, oBall) or place_meeting(x, yObj, oArrow)
		or place_meeting(x, yObj, oPingu) or place_meeting(x, yObj, oBaby) or place_meeting(x, yObj, oBlockMove)
		or place_meeting(x, yObj, oBallBig)
	){
		cancel = true;
		oPrueba.cancel = true;
		oPrueba.y = oPrueba.yInit;
		oPrueba.done = false;
	}
	if(!cancel){
			done = true;
			if(y == yObj){
				done = false;
				gonnaGetItFromDown = false;
			}
			else y += 1 * 2; 
		}
		if(cancel) {  gonnaGetItFromDown = false;}
		cancel = false;
}
