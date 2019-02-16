var mx = (oPrueba.x / 16) * 16 + 8;
var my = (oPrueba.y / 16) * 16 + 8;

if(mp_grid_path(global.grid,path,x,y,mx,my,1)){
	path_start(path,0.3,path_action_stop,false);
}