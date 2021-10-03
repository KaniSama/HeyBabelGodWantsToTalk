/// @description Insert description here
// You can write your code in this editor

if (x > camera_get_view_x(Control.cam) + Control.cw || x < camera_get_view_x(Control.cam)) {
	dir = - dir;
}

image_xscale = dir;
phy_position_x += dir * spd;