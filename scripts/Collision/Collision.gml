function Collision() {
	//les collisions :I
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	//distance a bouger
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx) {
		if(!place_meeting(x+sign(_tx-x), y, o_wall))
			x += sign(_tx-x);
	}
	
	repeat(_disy) {
		if(!place_meeting(x, y+sign(_ty-y), o_wall))
			y += sign(_ty-y);
	}
}