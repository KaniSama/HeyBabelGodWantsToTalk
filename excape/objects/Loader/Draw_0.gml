draw_set_halign(fa_center);
draw_set_font(fMainSmall);
draw_text(room_width * .5, room_height * .23, "Hey, Babel?\nGod Wants To Talk.");


if (!lmbd) {
	draw_sprite_ext(sInputs, 0, room_width * .33, room_height * .5, 1, 1, random_range(-.1, .1), c_white, 1);
}
if (!red) {
	draw_sprite_ext(sInputs, 1, room_width * .66, room_height * .5, 1, 1, random_range(-.1, .1), c_white, 1);
}

draw_text(room_width * .5, room_height * .66, "Start building.\nReach 50 meters.");
draw_set_halign(fa_left);