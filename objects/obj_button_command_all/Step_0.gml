/// @description Select Command State

if(mouse_check_button_pressed(mb_left) == true)
{
	if(global.command_all == true)
	{
		// Turn command_all off
		global.command_all = false;
		
		// Set sprite frame to frame 0
		image_speed = 0;
		image_index = 0;
		
	}else if(global.command_all == false)
	{
		// Turn command_all on
		global.command_all = true;
		
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}