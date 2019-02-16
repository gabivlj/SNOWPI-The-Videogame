speed=velMod*sp;

/*
offsetX = xSpeed;
offsetY = ySpeed;
nextX = x + xSpeed;
nextY = y + ySpeed;
colInstanceX = instance_place(nextX,y,oSquares);
colInstanceY = instance_place(x,nextY,oSquares);

if(colInstanceX != noone){
	if(colInstanceX.x > x){
		rightOffsetX = bbox_right - x + 1;
		newNextX = colInstanceX.bbox_left - rightOffsetX;
	} else {
		leftOffsetX = bbox_left - x - 1;
		newNextX = colInstanceX.bbox_right - leftOffsetX;
	}
	xSpeed *= -1;
	newOffsetX = newNextX - x;
	differenceX = offsetX - newOffsetX;
	newNextX -= differenceX;
	x = newNextX;
} else {
	x = nextX;
}

if(colInstanceY != noone){
	if(colInstanceY.y > y){
		bottomOffsetY = bbox_bottom - y + 1;
		newNextY = colInstanceY.bbox_top - bottomOffsetY;
	} else {
		topOffsetY = bbox_top - y - 1;
		newNextY = colInstanceY.bbox_bottom - topOffsetY;
	}
	ySpeed *= -1;
	newOffsetY = newNextY - x;
	differenceY = offsetY - newOffsetY;
	newNextY -= differenceY;
	y = newNextY;
} else {
	y = nextY;
}

dualCol = instance_place(nextX,nextY,oSquares);
if(dualCol != noone){
	xSpeed *= -1;
	nextX = x + xSpeed;
	x = nextX;
}

x = clamp(x,8,room_width-8);
y = clamp(y,8,room_height-8);

*/