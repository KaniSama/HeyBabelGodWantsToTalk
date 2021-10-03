/// @description Insert description here
// You can write your code in this editor

cd = clamp(cd+1, 0, maxcd);

y = Control.cy;

rope_direction += swing_direction * swing_speed;

if (rope_direction >= rd_max || rope_direction <= rd_min) swing_direction = -swing_direction;

box_x = x + lengthdir_x(rope_length, rope_direction);
box_y = y + lengthdir_y(rope_length, rope_direction);

swing_speed = 1 + clamp(-tower_height() div 80, 0, 4);

if (mouse_check_button_pressed(mb_left) && cd >= maxcd) {
	var new_box = instance_create_layer(box_x, box_y, "Instances", Box);
	new_box.phy_rotation = -rope_direction;
	
	cd = 0;
}