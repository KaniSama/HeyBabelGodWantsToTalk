if (room == room_game) {

	cw = camera_get_view_width(cam);
	ch = camera_get_view_height(cam);

	targetcw = clamp(startcw + instance_number(Box) * 10, startcw, maxcw);
	targetch = clamp(startch + instance_number(Box) * 10 * ratio, startch, maxch);

	cw += bezier(cw, targetcw, .33);
	ch += bezier(ch, targetch, .33);

	cy += bezier(cy, tower_height() - ch * .6, .15);

	camera_set_view_size(cam, cw, ch);
	camera_set_view_pos(cam, room_width * .5 - cw * .5, cy);


	remaining_population = instance_number(Person);
	casualties = initial_population - remaining_population;

	if (remaining_population <= 0) {
		state = states.gameover;
	}

	if (keyboard_check_pressed(ord("R"))) {
		state = states.restarting;
	}
}


if (state != states.playing) {
	radius += (0 - radius) * .15;
	if (radius < 0.03) {
		switch (state) {
			case states.gameover: room_goto(room_gameover); break;
			case states.nextroom: room_goto(room_game); break;
			case states.gameend: room_goto(room_menu); break;
			case states.gamewin: room_goto(room_win); break;
			case states.restarting: room_restart(); break;
		}
	}
} else {
	radius += (maxradius - radius) * .05;
}
