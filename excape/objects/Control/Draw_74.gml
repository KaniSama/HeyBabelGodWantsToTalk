draw_set_color(c_white);
draw_rectangle(0, 0, view_wport[0], view_hport[0], false);

shader_set(shBulge);
	draw_surface(application_surface, 0, 0) ;
shader_reset();