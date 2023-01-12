randomize();
//Grille de repère d'obstacles
grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(grid, o_wall, false);
alarm_set(1, 10);
x_random = irandom_range(10,400);
y_random = irandom_range(10,400);

//STATS
vitesse_org = 1.2;
vitesse = vitesse_org;
vision = 40;

//ALIM
water = 0;
water_full = false;
food = 1;
food_full = false;