
// bezier-interpolates the starting_value towards the ending_value
function bezier(starting_value, ending_value, coefficient){
	return ( ending_value - starting_value ) * coefficient;
}

// returns the tower height of the game
function tower_height() {
	global.height = room_height;
	
	with (Box) {
		if (dropped && phy_position_y < global.height) {
			global.height = phy_position_y;
		}
	}
	
	return global.height;
}

// handles NPC death effects
function die() {
	instance_destroy();
}