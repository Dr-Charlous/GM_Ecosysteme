draw_self();
draw_circle(x,y,vision,true);

if (path_exists(path_index)) {
	draw_path(path_index, 0, 0, true);
}

//for	(var j = 0; j < room_width div 32; j++) {
//	for	(var i = 0; i < room_height div 32; i++) {
//		draw_text(i*room_width div 32,j*room_height div 32,mp_grid_get_cell(grid,i,j));
//	}
//}