/// @description Camera

#macro CAMERA view_camera[0]


var target_x = 0;
var target_y = 0;
var cam_x = camera_get_view_x(CAMERA);
var cam_y = camera_get_view_y(CAMERA);
var cam_w = camera_get_view_width(CAMERA);
var cam_h = camera_get_view_height(CAMERA);


// Panning the camera
if(mouse_check_button(mb_middle))
{
	// Compare mouse position with where it was last frame 
	var move_x = device_mouse_x_to_gui(0) - global.mouse_x_previous;
	var move_y = device_mouse_y_to_gui(0) - global.mouse_y_previous;
	
	cam_x -= move_x;
	cam_y -= move_y;
	
// Default movement
}else
{
	// Check if obj_player_parent exists
	if(instance_exists(obj_player_parent))
	{
		// Set camera to target obj_player_parent
		target_x = obj_player_parent.x - cam_w / 2;
		target_y = obj_player_parent.y - cam_h / 2;
	
	} else if(instance_exists(obj_com_pause_parent))
	{
		// Set camera to target obj_com_pause_parent
		target_x = obj_com_pause_parent.x - cam_w / 2;
		target_y = obj_com_pause_parent.y - cam_h / 2;
	}
	
	// Prevent camera from leaving map
	target_x = clamp(target_x, 0, room_height - cam_w);
	target_y = clamp(target_y, 0, room_width - cam_h);
	
	// Set linear interpolation for camera movement smoothing
	cam_x = lerp(cam_x, target_x, global.cam_smoothing);
	cam_y = lerp(cam_y, target_y, global.cam_smoothing);
}


// Zooming camera
var wheel = mouse_wheel_down() - mouse_wheel_up();
if(wheel != 0)
{
	// Slow zooming
	wheel *= 0.1;
	
	// Change size
	var add_w = cam_w * wheel;
	var add_h = cam_h * wheel;
	
	cam_w += add_w;
	cam_h += add_h;
	
	// Position
	cam_x -= add_w / 2;
	cam_y -= add_h / 2;
}


// Set camera position
camera_set_view_pos(CAMERA, cam_x, cam_y);

// Set camera size
camera_set_view_size(CAMERA, cam_w, cam_h)

// Store previous
global.mouse_x_previous = device_mouse_x_to_gui(0);
global.mouse_y_previous = device_mouse_y_to_gui(0);