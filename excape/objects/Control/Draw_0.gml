/// @description Insert description here
// You can write your code in this editor

if (room != room_menu) {
	
	draw_set_alpha(.33);
	draw_rectangle_color(room_width * .2, -1024, room_width * .8, room_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_set_alpha(1);

	if (surface_exists(black)) {
		surface_set_target(black);
	
			draw_set_color(c_black);
			draw_rectangle(0, 0, room_width, room_height, false);
			draw_set_color(c_white);
		
			gpu_set_blendmode(bm_subtract);
			draw_circle(room_width * .5, room_height * .5, radius, false);
			gpu_set_blendmode(bm_normal);
		
		surface_reset_target();
	
		draw_surface(black, 0, cy - (room_height - ch) * .5);
	}

}