Collision();


//MOVE CONTROL MOUSE
Script();


//DRINKING
if place_meeting(x,y,o_water) and water > 0 {
	water -= 0.5;
} else {
	water += 0.075;
}
if water <= 10 {
	water_full = true;
	alarm[0] = 60*10;
}

//EATING
if place_meeting(x,y,o_vegetable) and food > 0 {
	food -= 0.5;
} else {
	food += 0.075;
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
if water > food {
	var path = path_add();
	if mp_grid_path(grid, path, x, y, instance_nearest(x,y,o_water).x, instance_nearest(x, y, o_water).y, 1) {
		path_start(path, vitesse, 0, 0);
	}
}

//GO FOOD
if food > water {
	var path = path_add();
	if mp_grid_path(grid, path, x, y, instance_nearest(x,y,o_vegetable).x, instance_nearest(x, y, o_vegetable).y, 1) {
		path_start(path, vitesse, 0, 0);
	}
}