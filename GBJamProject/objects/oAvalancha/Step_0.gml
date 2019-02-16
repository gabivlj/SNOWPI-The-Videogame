if(oCountDown.alud == true){
	if(countdown != 0){
		for(var i = 0; i<=5;i++){
			instance_create_depth(random_range(-18,room_width+18),-30,layer,oRock)
		}
	} else {
		instance_destroy(self);
	}
	countdown--;
} 