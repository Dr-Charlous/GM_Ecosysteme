grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(grid, o_wall, false);

//STATS
vitesse = 1.2;

//ALIM
water = 0;
water_full = false;
food = 0;
food_full = false;