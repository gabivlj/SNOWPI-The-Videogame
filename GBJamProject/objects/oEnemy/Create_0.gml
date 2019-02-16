roomheight = room_height - 8;
roomwidth = room_width - 8 ;
hcells = roomheight / 16;
vcells = roomwidth / 16;
path = path_add();
global.grid = mp_grid_create(8,8,hcells,vcells,16,16);

mp_grid_add_instances(global.grid,oBlock,false);
move_snap(16,16);