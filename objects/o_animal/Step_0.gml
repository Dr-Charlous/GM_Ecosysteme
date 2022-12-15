Collision();

Scipt();



//WATER
if place_meeting(x,y,o_water) and water > 0 {
	water -= 0.5;
} else {
	water += 0.1;
}
if water <= 10 {
	water_full = true;
	alarm[0] = 240;
}

//FOOD
if place_meeting(x,y,o_vegetable) and food > 0 {
	food -= 0.1;
} else {
	food += 0.05;
}
if food <= 10 {
	food_full = true;
	alarm[0] = 240;
}

	
	
	
if water > distance_to_object(instance_nearest(x,y,o_water))/10 and !water_full {
	var path = path_add();
	if mp_grid_path(grid, path, x, y, instance_nearest(x,y,o_water).x, instance_nearest(x, y, o_water).y, 1) {
		path_start(path, vitesse, 0, 0);
	}
}
	
if food > distance_to_object(instance_nearest(x,y,o_vegetable))/10 and !food_full {
	var path = path_add();
	if mp_grid_path(grid, path, x, y, instance_nearest(x,y,o_vegetable).x, instance_nearest(x, y, o_vegetable).y, 1) {
		path_start(path, vitesse, 0, 0);
	}
}