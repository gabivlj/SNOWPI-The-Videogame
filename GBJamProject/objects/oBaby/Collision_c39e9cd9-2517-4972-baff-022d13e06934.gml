audio_play_sound(sndBabyCogido,1,false);
instance_destroy(self);
global.babies++;
global.stateGame = GAME.ROOMWIN;
global.firstTransition = false;