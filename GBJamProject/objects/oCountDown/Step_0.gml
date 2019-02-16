/*
if(!allEnded){
	if(!noMoreUnits){
		if(second != 0){
			second--;
		} else {
			downUnit = true;
			secondCounter++;
			if(actualUnitSubimage == 10){
				actualUnitSubimage = 0;
			} else {
				actualDecSubimage++;
			}
			second = 60;
		}
	}

	if(!noMoreDec){
		if(secondCounter == 11){
			if(actualDecSubimage == 10){
				noMoreDec = true;
			} else {
				actualDecSubimage++;
			}
			secondCounter = 0;
		}
	}
}
if(actualUnitSubimage == 0 && actualDecSubimage == 11){
	noMoreUnits = true;
	allEnded = true;
	alud = true;
}
*/
if(noMoreDec && noMoreUnits){
	alud = true;
}
if(actualUnitSubimage == 0 && actualDecSubimage == 9){
	noMoreUnits = true;
}
if(actualDecSubimage == 9){
	noMoreDec = true;
}

if(firstTime){
	firstTime = false;
} else {
	if(!noMoreUnits){
		if(seconds != 0){
			seconds--;
		} else {
			if(actualUnitSubimage == 0 && !cheese){
				actualDecSubimage++;
			}
			if(actualUnitSubimage == 9){
				actualUnitSubimage = 0;
			} else {
				if(cheese){
					actualDecSubimage++;
					cheese = false;
				}
				actualUnitSubimage++;
			}
			seconds = 60;
			tenSeconds--;
		}
	}
}
