
function Scipt() {
	var grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
	mp_grid_add_instances(grid, o_wall, false);
	var path = path_add();
	if mp_grid_path(grid, path, x, y, mouse_x, mouse_y, 1) and mouse_check_button_pressed(mb_left) {
	      path_start(path, 1, 0, 0);
	} 
}