
depth = -1;

cam = view_camera[0];

maxcw = room_width;
maxch = room_height;

if (room != room_menu) {

	startcw = room_width *.5;
	startch = room_height *.5;

	ratio = maxch / maxcw;
	
	cy = room_height * .5;

} else {
	startcw = room_width;
	startch = room_height;
	
	ratio = maxch / maxcw;
	
	cy = room_height;
}

camera_set_view_size(cam, startcw, startch);




casualties = 0;
remaining_population = instance_number(Person);
initial_population = remaining_population - casualties;


ps = part_system_create();

bld = part_type_create();
part_type_alpha1(bld, 1);
part_type_life(bld, 16, 60);
part_type_color1(bld, c_red);
part_type_gravity(bld, .5, 270);
part_type_direction(bld, 0, 359, 0, false);
part_type_speed(bld, 1, 3, 0, false);
part_type_shape(bld, pt_shape_square);
part_type_size(bld, .1, .2, -.01, false);
part_type_orientation(bld, 0, 359, 0, 0, true);

black = surface_create(room_width, room_height);

states = {playing: 0,
		restarting: 1,
		gameend: 2,
		gamewin: 3,
		gameover: 4,
		nextroom: 5};
		
state = states.playing;

radius = 0;
maxradius = max(room_height + 32, room_width + 32);