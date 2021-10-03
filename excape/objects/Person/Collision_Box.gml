/// @description Insert description here
// You can write your code in this editor

if (other.phy_speed_y > .8) {
	die();
} else {
	if (other.phy_position_x > room_width * .82) {
		other.phy_speed_x = 10;
	} else if (other.phy_position_x < room_width * .18) {
		other.phy_speed_x = -10;
	}
}