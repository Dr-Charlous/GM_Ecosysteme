draw_text(2,2,"water : ");
draw_text(80,2,water);
draw_text(2,20,distance_to_object(instance_nearest(x,y,o_water)));

draw_text(2,40,"food : ");
draw_text(80,40,food);
draw_text(2,60,distance_to_object(instance_nearest(x,y,o_vegetable)));

//draw_text(2, 100, x_random);
//draw_text(2, 140, y_random);
//draw_text(2, 160, room_width div 32);

