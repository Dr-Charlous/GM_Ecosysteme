randomize();

Collision();

//MOVE CONTROL MOUSE
Script();


//DRINKING
if place_meeting(x,y,o_water) and water > 0 {
	water -= 0.25;
} else {
	water += 0.01;
}
if water <= 10 {
	water_full = true;
	alarm[0] = 60*10;
}

//EATING
if place_meeting(x,y,o_vegetable) and food > 0 {
	food -= 0.25;
} else {
	food += 0.002;
}
if food <= 10 {
	food_full = true;
	alarm[0] = 60*10;
}
	


//OCCUPIED
if (place_meeting(x,y,o_water) and water>10) or (place_meeting(x,y,o_vegetable) and food>10) {
	vitesse = 0;
} else {
	vitesse = vitesse_org;
}
	
//GO WATER
if water > food and water > 50 {
	var path = path_add();
	var nearest_x = instance_nearest(x,y,o_water).x;
	var nearest_y = instance_nearest(x, y, o_water).y;
	if mp_grid_path(grid, path, x, y, nearest_x, nearest_y, 1) {
		path_start(path, vitesse, 0, 0);
	}
	if x == nearest_x and y == nearest_y {
		path_end();
	}
}

//GO FOOD
if food > water and food > 50 {
	var path = path_add();
	var nearest_x = instance_nearest(x,y,o_vegetable).x;
	var nearest_y = instance_nearest(x, y, o_vegetable).y;
	if mp_grid_path(grid, path, x, y, nearest_x, nearest_y, 1) {
		path_start(path, vitesse, 0, 0);
	}
	if x == nearest_x and y == nearest_y {
		path_end();
	}
}

//RANDOM POS
var path = path_add();
if position_meeting(x_random, y_random, o_wall) {
	x_random = irandom_range(0,1000);
	y_random = irandom_range(0,1000);
} else {
	mp_grid_path(grid, path, x, y, x_random, y_random, 1)
	if path_end() == true {
		x_random = irandom_range(0,1000);
		y_random = irandom_range(0,1000);
	} else {
		path_start(path, vitesse, 0, 0);
	}
}