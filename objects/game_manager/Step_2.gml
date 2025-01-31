/// @description Camera

#macro CAMERA view_camera[0]

if(!global.game_esc_paused)
{
	
	// Panning the camera
	if(mouse_check_button(mb_middle))
	{
		// Compare mouse position with where it was last frame 
		var move_x = device_mouse_x_to_gui(0) - global.mouse_x_previous;
		var move_y = device_mouse_y_to_gui(0) - global.mouse_y_previous;
		
		// Prevent camera from leaving map
		global.cam_x = clamp(global.cam_x - move_x, 0, room_height - global.cam_w);
		global.cam_y = clamp(global.cam_y - move_y, 0, room_width - global.cam_h);

	
	// Default movement
	}else
	{
		// Check if obj_player_parent exists
		if(instance_exists(obj_player_parent))
		{
			// Set camera to target obj_player_parent
			global.cam_target_x = obj_player_parent.x - global.cam_w / 2;
			global.cam_target_y = obj_player_parent.y - global.cam_h / 2;
	
		} else if(instance_exists(obj_com_pause_parent))
		{
			// Set camera to target obj_com_pause_parent
			global.cam_target_x = obj_com_pause_parent.x - global.cam_w / 2;
			global.cam_target_y = obj_com_pause_parent.y - global.cam_h / 2;
		}
	
		// Prevent camera from leaving map
		global.cam_target_x = clamp(global.cam_target_x, 0, room_height - global.cam_w);
		global.cam_target_y = clamp(global.cam_target_y, 0, room_width - global.cam_h);
	
		// Set linear interpolation for camera movement smoothing
		global.cam_x = lerp(global.cam_x, global.cam_target_x, global.cam_smoothing);
		global.cam_y = lerp(global.cam_y, global.cam_target_y, global.cam_smoothing);
	}

/*
	// Zooming camera
	var wheel = mouse_wheel_down() - mouse_wheel_up();
	if(wheel != 0)
	{
		// Slow zooming
		wheel *= 0.1;
	
		// Change size
		var add_w = global.cam_w * wheel;
		var add_h = global.cam_h * wheel;
	
		global.cam_w += add_w;
		global.cam_h += add_h;
	
		// Position
		global.cam_x -= add_w / 2;
		global.cam_y -= add_h / 2;
	}
	*/

	// Set camera position
	camera_set_view_pos(CAMERA, global.cam_x, global.cam_y);

	// Set camera size
	camera_set_view_size(CAMERA, global.cam_w, global.cam_h)



	// Store previous
	global.mouse_x_previous = device_mouse_x_to_gui(0);
	global.mouse_y_previous = device_mouse_y_to_gui(0);
}





