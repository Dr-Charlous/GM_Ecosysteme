draw_self();
draw_circle(x,y,vision,true);
draw_circle(x_random*16,y_random*16,10,false);

if (path_exists(path_index)) {
	draw_path(path_index, 0, 0, true);
}