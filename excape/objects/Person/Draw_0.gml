/// @description Insert description here
// You can write your code in this editor

if (y > Control.cy + Control.ch) {
	draw_set_alpha(.15);
	gpu_set_blendmode(bm_add);
	draw_rectangle_color(x-8, y, x+8, y-150, c_black, c_black, c_white, c_white, false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
} else {
	draw_self();
}