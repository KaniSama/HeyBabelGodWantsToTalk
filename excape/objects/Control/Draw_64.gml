/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMain);
if (room == room_game) {

	th = tower_height();

	displayth = (room_height - th) div 4;

	draw_text(16, 16, "Casualties: " + string(casualties) +
						"\nRemaining population: " + string(remaining_population) +
						"\nTower height: " + string(displayth) + " meters");
				
	draw_set_halign(fa_center);
	draw_text(view_wport[0] * .5, view_hport[0] * .9, string(displayth))
	draw_set_halign(fa_left);
					
	if (displayth >= 50) {
		state = states.gamewin;
	}
}