if (keyboard_check_pressed(ord("R"))) {
	red = true;
}
if (mouse_check_button_pressed(mb_left)) {
	lmbd = true;
}

if (red && lmbd) {
	room_goto(room_game);
	//Control.state = Control.states.nextroom;
}