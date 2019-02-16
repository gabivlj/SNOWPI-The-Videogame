
//DEVELOPMENT TOOLS

keyR = keyboard_check_pressed(ord("R"));

show_debug_message(string(room))

// OPLAYER
/*TO DO: SOLUCIONAR BUG EN EL QUE PULSAS EL ESPACIO Y SE MUEVE*/

//show_debug_message(string(falling));
keyLeft = keyboard_check_pressed(vk_left); //Las he puesto en pressed para que funcione el pingu wapos
keyUP = keyboard_check_pressed(vk_up);
keyRight = keyboard_check_pressed(vk_right);
keyDown = keyboard_check_pressed(vk_down);
keyPickaxe = keyboard_check_pressed(vk_space);

if(global.stateGame ==  GAME.ROOMPLAYING and !canHit and !finishFalling){
	if(!done and finished){
		if(keyR){
			global.hpPlayer--;
			room_restart();
		}
		if(keyLeft){
			cancelArrow = false;
			cancelIce = false;
			finished = false;
			//show_debug_message("keyleft");
			playerState = STATE.WALK;
			faceX = FACEX.LEFT;
			faceY = FACEY.NONE;
			faceXTrue = FACEX.LEFT;
		}
		else if(keyRight){
			cancelArrow = false;
			cancelIce = false;
			finished = false;
			//show_debug_message("keyleft");
			playerState = STATE.WALK;
			faceX = FACEX.RIGHT;
			faceY = FACEY.NONE;
			faceXTrue = FACEX.RIGHT;
		}
		else if(keyUP){
			cancelArrow = false;
			cancelIce = false;
			finished = false;
			//show_debug_message("keyup");
			playerState = STATE.WALK;
			faceY = FACEY.UP;
			faceX = FACEX.NONE;
		}
		else if(keyDown){
			cancelArrow = false;
			cancelIce = false;
			finished = false;
			//show_debug_message("keydown");
			playerState = STATE.WALK;
			faceY = FACEY.DOWN;
			faceX = FACEX.NONE;
		}
		else if(keyPickaxe){
			cancelIce = false;
			playerState = STATE.OBJPICKAXE;
			cancelArrow = false;
			finished = false;
		}
		else {
		playerState = STATE.IDLE;
		}
	}

	switch(playerState){
		case STATE.IDLE: 
			teleport = instance_nearest(x,y,oTeleport);
			if(place_meeting(x,y,oTeleport) and teleport.stop){
				sprite = sReappearingFromTeleportAnim;
				sprite_index = sReappearingFromTeleportAnim
				if(image_index >= image_number-1){
					image_speed = 0;
				}
			}
			else if(FACEX.LEFT == faceXTrue){
				if(!arrayObj[OBJECTS.OFIRE])sprite = arraySprite[SPRITE.IDLELEFT];
				else sprite = arraySprite[SPRITE.IDLELEFTFIRE];
				image_speed = 1;	
			}
			else{
				if(!arrayObj[OBJECTS.OFIRE])sprite = arraySprite[SPRITE.IDLERIGHT];
				else sprite = arraySprite[SPRITE.IDLERIGHTFIRE];
				image_speed = 1;	
			}
			break;
		case STATE.WALK:
		image_speed = 1;	
		    if(faceXTrue == FACEX.LEFT){
				if(arrayObj[OBJECTS.OFIRE]) sprite = arraySprite[SPRITE.WALKFIRELEFT];
				else sprite = arraySprite[SPRITE.WALKLEFT];
				spritewalk = sprite;
			}
			else if(faceXTrue == FACEX.RIGHT){
				if(arrayObj[OBJECTS.OFIRE]) sprite = arraySprite[SPRITE.WALKFIRERIGHT];
				else sprite = arraySprite[SPRITE.WALKRIGHT];
				image_xscale = 1;
			}
			else{
				sprite = spritewalk;
			
			}
			if(faceX != FACEX.NONE){
				if(!done){
					xObj = x + ( faceX * (sprite_width)) ;
					xInit = x;
					if(place_meeting(xObj,y, oBlock)){
						//show_debug_message("cancel")
						cancel = true;
						xObj = x;
					}
					else if(place_meeting(xObj, y, oBlockMove)){
						var instance = instance_place(xObj, y, oBlockMove);
						if(faceX == 1) instance.gonnaGetItFromLeft = true;
						else instance.gonnaGetItFromRight = true;
				//		if(instance.cancel) cancel = true;
					}
				}
				if(!cancel){
					done = true;
					if(x == xObj){
						done = false;
					}				
					else x += 1 * faceX; 		
				}
				cancel = false;
			}
			else{
				if(!done){
					yObj = y + ( faceY * (sprite_height)) ;
					yInit = y;
					if(place_meeting(x,yObj, oBlock)){
						//show_debug_message("cancel")
						cancel = true;
						yObj = y;
					}
					else if(place_meeting(x, yObj, oBlockMove)){
						var instance = instance_place(x, yObj, oBlockMove);
						if(faceY == 1) instance.gonnaGetItFromDown = true;
						else instance.gonnaGetItFromUp = true;
						if(instance.cancel) cancel = true;
					}
				}
				if(!cancel){
					done = true;
					if(y == yObj){
						done = false;
					}	
					else y += 1 * faceY; 
					}
				cancel = false;
			}
			cantMove = false;
			break;
		case STATE.OBJPICKAXE:
		image_speed = 1;		
			if(arrayObj[OBJECTS.PICKAXE]){
				if(faceX == FACEX.RIGHT)sprite = sUsingPickaxe;
				else sprite = sUsingPickaxeLeft;
				if(!hasUsed){
					//show_debug_message("PICKAXE");
					instance_create_depth(x + (sprite_width * faceX) , y + (sprite_height * faceY), depth, oHit);
					hasUsed = true;
					alarm[0] = 30;
				}
			}
			break;
		case STATE.DAMAGE:
		case STATE.MOVINGOBJ:
		case STATE.TELEPORT:

		case STATE.ONICE:
		image_speed = 1;	
		//show_debug_message("ice");
			if(!get){
				get = true;
				if(faceY == -1){
					yObj = y - sprite_height;
					xObj = x;
				}
				if(faceX == 1){
					yObj = y;
					xObj = x + sprite_width;
				}
				if(faceX == -1){
					yObj = y;
					xObj = x - sprite_width;
				}
				if(faceY == 1){
					yObj = y + sprite_height;
					xObj = x;
				}
				if(place_meeting(xObj, yObj, oBlockMove) or place_meeting(xObj, yObj, oBlock)){
					//show_debug_message("ENTERS!");
					cancelIce = true;
					finished = true;
					get = false;
					done= false;
				}
			}
			else if(!cancelIce){
				if(yObj == y){
					doneY = true;
				}
				else if (yObj > y) y++;
				else y--;
				if(xObj == x){
					doneX = true;
				}
				else if(xObj > x) x++;
				else x--;
			}
			if(doneY and doneX){
				done = false;
				doneX = false;
				doneY = false;
				get = false;
				finished = true;
			}
			break;
		case STATE.ONARROW:
		image_speed = 1;		
		//show_debug_message("Arrow");
			 instanceArrow = instance_nearest(x,y,oArrow);
			if(!get and instanceArrow != undefined){
				get = true;
				
				if(instanceArrow.image_index == 0){ 
					yObj = y - sprite_height;
					xObj = x;
					faceX = FACEX.NONE;
					faceY = FACEY.UP;
				}
				else if(instanceArrow.image_index == 1){
					yObj = y;
					xObj = x + sprite_width;
					faceX = FACEX.RIGHT;
					faceY = FACEY.NONE;
				}
				else if(instanceArrow.image_index == 3){
					yObj = y;
					xObj = x - sprite_width;
					faceX = FACEX.LEFT;
					faceY = FACEY.NONE;
				}
				else if(instanceArrow.image_index == 2){
					yObj = y + sprite_height;
					xObj = x;
					faceX = FACEX.NONE;
					faceY = FACEY.DOWN;
				}
				
				if(place_meeting(xObj, yObj, oBlockMove) or place_meeting(xObj, yObj, oBlock)){
					cancelArrow = true;
					finished = true;
					get = false;
					done= false;
				}
			}
			else if(!cancelArrow){
				
				if(yObj == y){
					doneY = true;
				}
				else if (yObj > y) y++;
				else y--;
				if(xObj == x){
					doneX = true;
				}
				else if(xObj > x) x++;
				else x--;
			}
			if(doneY and doneX){
				done = false;
				doneX = false;
				doneY = false;
				get = false;
				finished = true;
			}
			break;
	}

	sprite_index = sprite;



	//StopTime


	if(place_meeting(x, y, oStopTime)) {
	    arrayObj[OBJECTS.STOPTIME] = true;
	    if (arrayObj[OBJECTS.STOPTIME])
	    {
	        if (instance_exists(objEnemyParent))
			{
				objEnemyParent.velMod = 0;			
			}
			
			if (instance_exists(oPingu))
			{
				oPingu.pinguCanMove=false;			
			}
		
			if (instance_exists(objKillingThingParent))
			 objKillingThingParent.velMod=0;	
		 
			 audio_pause_sound(oMusicManager.audioGame);	
	    }
	    alarm[2]=60;
	    StopTime=0;   
	}

	//One more Life
	if(place_meeting(x, y, oLife)) {
	    arrayObj[OBJECTS.ONELIFE] = true;
	    if (arrayObj[OBJECTS.ONELIFE])
	    {
	        global.hpPlayer++;			
	    }
	}
	
	//Invencibility Fire Power-Up
	
	if(place_meeting(x, y, oFire)) {
	    arrayObj[OBJECTS.OFIRE] = true;
		alarm[1]=180;
	}

//ARROW MEETING

			if((place_meeting(xObj, y, oArrow) or place_meeting(x, yObj, oArrow)) and !cancelArrow){
						finished = false;
						instanceArrow = instance_place(x, y, oArrow);
						if(!done){
							playerState = STATE.ONARROW;	
							done = true;
						}
			}
			else finished = true;
			//BOOTS POWER-UP
			show_debug_message("x: " + string(x));
						show_debug_message("y: " + string(y));
						show_debug_message("xObjICE: " + string(xObj));
						show_debug_message("yObjICE: " + string(yObj));
			if((place_meeting(xObj, y, oIce) or place_meeting(x, yObj, oIce)) and !cancelIce and !arrayObj[OBJECTS.BOOTSICE]){
						//show_debug_message("PLACEMEETING OICE");
						
						finished = false;
						instanceIce = instance_place(x, y, oIce);
						if(!done){
							playerState = STATE.ONICE;	
							done = true;
						}
			}
			else finished = true;
			
			
			/////// DEBUG COMMENTS ///////////////////////
			
			
			/*show_debug_message(string(finished));
			show_debug_message(string(done));
			show_debug_message(string(cancelArrow));
			
			show_debug_message("state: " + string(cancelIce));*/
			//show_debug_message("life: " + string(global.playerHp));
			//show_debug_message("Boots: " + string(arrayObj[OBJECTS.BOOTSICE]));
			
			
		//	show_debug_message("state: " + string(playerState))
			// 3==onice
			//////////////////////////////////////////////////////////////////////////
			
			
			//show_debug_message("pickaxe: " + string(arrayObj[OBJECTS.PICKAXE]));
			
			
			
	if(global.hpPlayer <= 0) {
		game_restart();
	}
}
else if(global.stateGame == GAME.ROOMWIN){
	//TODO: Que el sprite aparezca con el hijo cargado a la espalda --> Hecho
	// un YOU WIN!
	// Espere 5 segundos y pase a GAME.TRANSITION y room_transition
	room_goto(rTransition);
	global.stateGame = GAME.TRANSITION;
}
else if(global.stateGame == GAME.TRANSITION){
	if(!global.firstTransition){
		if(room == rTransition){
			sprite_index = arraySprite[SPRITE.WALKWITHBABY];
			hspeed = 1.2;
		}
	} else {
		sprite_index = arraySprite[SPRITE.WALKRIGHT];
		hspeed = 1.2;
	}
}
else if(global.stateGame == GAME.TRANSITIONWIN){
	hspeed = 1;
	sprite_index = arraySprite[SPRITE.WALKWITHBABY];
	if(place_meeting(x,y,oBlockForWin)){
		room_goto(rCredits);
		global.stateGame = GAME.CREDITS;
	}
}
else if(global.stateGame == GAME.CREDITS){
	sprite_index = arraySprite[SPRITE.IDLERIGHTFIRE];
	hspeed = 0;
	if(keyPickaxe) game_restart();
}
if(finishFalling){
	//sprite_index = sFalling
	playerState = -3;
	sprite_index = sFall;
	sprite = sFall;
	/*if(!start_timer){
		start_timer = true;
		time0 = room_speed * 3;
	}
	if(time0 > 0) time0--;
	if(time0 == 0){*/
	if(!start_timer) {
		audio_play_sound(sndFall, 1, false);
		start_timer = true;
	}
	if(image_index >= image_number-1){
		global.hpPlayer--;
		room_goto(rTransitionDeath);
		global.stateGame = GAME.TRANSITIONDEATH;
	}
}