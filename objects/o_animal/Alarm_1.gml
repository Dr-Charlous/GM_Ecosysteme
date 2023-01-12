
if x != x_random and y != y_random {
	
	if !position_meeting(x_random, y_random, o_wall) {
		var path = path_add();
		mp_grid_path(grid, path, x, y, x_random, y_random, 1)
		path_start(path, vitesse, 0, 0);
	} else {
		x_random = irandom_range(10,400);
		y_random = irandom_range(10,400);
		alarm_set(1, 30);
	}
} else {
	path_end();
	x_random = irandom_range(10,400);
	y_random = irandom_range(10,400);
	alarm_set(1, 30);
}
