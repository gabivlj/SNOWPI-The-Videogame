while xx < room_width or yy < room_height {
	layer_force_draw_depth(true, -1);
	draw_set_color(col);
	draw_line_width(xx,0,xx,room_height,w);
	draw_line_width(0,yy,room_width,yy,w);
	draw_set_color(dcol);
	draw_set_alpha(.1);
	xx+=gw;
	yy+=gh;
}

xx = 0;
yy = 0;
draw_set_alpha(1);