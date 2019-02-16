/// @description Insert description here
// You can write your code in this editor
if(smallTimer == 0){
	instance_create_layer(random_range(-10,room_width+10),-30,"SmallRocks",oTitleRockSmall);
	smallTimer = 3;
}
if(silhouetteTimer == 0){
	instance_create_layer(random_range(-10,room_width+10),-30,"Silhouette",oTitleRockMed);
	silhouetteTimer = 5;
}
if(timer == 0){
	instance_create_layer(random_range(-10,room_width+10),-30,"Fallingrocks",oRock);
	timer = 7;
}
timer--;
silhouetteTimer--;
smallTimer--;