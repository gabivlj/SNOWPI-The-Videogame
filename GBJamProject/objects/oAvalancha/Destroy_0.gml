/// @description Insert description here
// You can write your code in this editor

global.hpPlayer--;
room_goto(rTransitionDeath);
global.stateGame = GAME.TRANSITIONDEATH;
