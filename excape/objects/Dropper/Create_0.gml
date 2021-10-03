x = room_width * .5;
y = 0;

rope_length = 64;
rope_direction = 270;
rd_offset = 45; // the maximum offset of the rope swing
rd_max = 270 + rd_offset; // maximum direction of rope
rd_min = 270 - rd_offset; // minimum direction of rope
swing_direction = 1;
swing_speed = 1;

cd = 0; // Box drop cooldown
maxcd = 60;

box_x = x + lengthdir_x(rope_length, rope_direction);
box_y = y + lengthdir_y(rope_length, rope_direction);