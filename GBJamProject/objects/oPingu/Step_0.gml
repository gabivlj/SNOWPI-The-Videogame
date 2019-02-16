if(pinguCanMove)
{
	if(firstTimer > 0){
		image_speed=1;
		directionX = sign(oPrueba.x - x);
		directionY = sign(oPrueba.y - y);

		nextX = x + (xSpeed * directionX);
		nextY = y + (ySpeed * directionY);

		//HorCols
		if(place_meeting(nextX,y,oSquares)){
			//show_debug_message("ColX")
			instOSQ = instance_place(nextX, y, oSquares);
			if(directionX > 0){
				offsetX = instOSQ.bbox_left - x -1;
				newNextX = x + offsetX;
			} else {
				offsetX = instOSQ.bbox_right -x +1;
				newNextX = x + offsetX;
			}
			nextX = newNextX;
			canMoveX = true;
			if(place_meeting(x+directionX,y,oSquares)){
				canMoveX = false;
				nextX = x;
			}
		} else {
			//show_debug_message("noColX")
			canMoveX = true;
		}

		//VerCols
		if(place_meeting(x,nextY,oSquares)){
			//show_debug_message("ColY")
			instOSQY = instance_place(x,nextY,oSquares);
			if(directionX > 0){ //down
				offsetY = instOSQY.bbox_top - y + 1;
				newNextY = y + offsetY;
			} else { //up
				offsetY = instOSQY.bbox_bottom - y + 1;
				newNextY = y + offsetY;
			}
			nextY = newNextY;
			canMoveY = true;
			if(place_meeting(x,y+directionY,oSquares)){
				canMoveY = false;
				nextY = y;
			}
		} else {
			//show_debug_message("noColY")
			canMoveY = true;
		}


		if(x == oPrueba.x){
			canMoveX = false;
			canMoveY = true;
		}
		if(y == oPrueba.y){
			canMoveX = true;
			canMoveY = false;
		}

		if(canMoveX && canMoveY){

			//show_debug_message("Randomguy")
			randomNum = random_range(0,1);
			if(randomNum == 0){
				canMoveX = true;
				canMoveY = false;
			} else {
				canMoveX = false;
				canMoveY = true;
			}
		}

		if(canMoveX && !canMoveY){
			if(x != nextX){
				x += 1 * directionX;
				//show_debug_message("hereX")
			}
		}
		if(canMoveY && !canMoveX){
			if(y != nextY){
				y += 1 * directionY;
				//show_debug_message("hereY")
			}
		}
		firstTimer--;
	} else {
		secondTimer --;
	}
	if(secondTimer == 0){
		firstTimer = 16;
		secondTimer = 60;
	}
}
else
{
	image_speed=0;
}