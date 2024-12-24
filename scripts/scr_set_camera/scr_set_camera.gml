
function scr_set_camera()
{
	// Sets position of the camera to the position of the object
	
	var half_view_width = camera_get_view_width(view_camera[0]) / 2;
	var half_view_height = camera_get_view_height(view_camera[0]) / 2;

	camera_set_view_pos(view_camera[0], x - half_view_width, y - half_view_height);
}