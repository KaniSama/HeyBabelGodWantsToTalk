/// @description Insert description here
// You can write your code in this editor

if (phy_position_x > room_width + 16 || phy_position_x < -16) {
	instance_destroy();
}