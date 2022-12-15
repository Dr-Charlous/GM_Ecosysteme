function Main(range_vision, vitesse) {
	var grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
	mp_grid_add_instances(grid, o_wall, false);
	
	
	
	
	if collision_circle(x, y, range_vision, o_water, false, false) {
		if water > 50 {
			var path = path_add();
			if mp_grid_path(grid, path, x, y, instance_nearest(x, y, o_water).x, instance_nearest(x, y, o_water).y, 1) and mouse_check_button_pressed(mb_left) {
			      path_start(path, vitesse, 0, 0);
			}
		}
	}
	
	
	//var path = path_add();
	//if mp_grid_path(grid, path, x, y, mouse_x, mouse_y, 1) and mouse_check_button_pressed(mb_left) {
	//      path_start(path, vitesse, 0, 0);
	//} 
}