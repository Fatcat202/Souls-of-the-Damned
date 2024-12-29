/// @description Camera

#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height)


// Check if obj_player_parent exists
if(instance_exists(obj_player_parent))
{
	// Set camera to follow obj_player_parent, blocked by edge of map
	var xx = clamp(obj_player_parent.x - view_width / 2, 0, room_width - view_width);
	var yy = clamp(obj_player_parent.y - view_height / 2, 0, room_height - view_height);
	camera_set_view_pos(view, xx, yy);
	/*
	// Camera speed when reaching edge of map
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	var spd = 1;
	camera_set_view_pos(view, lerp(cur_x, xx, spd), lerp(cur_y, yy, spd));
	*/
}
