/// @description Insert description here
// You can write your code in this editor

if(global.command_all == true)
{
	// Turn command_all off
	global.command_all = false;
	
	// Set sprite frame to frame 0
	image_speed = 0;
	image_index = 0;
		
	show_debug_message("** COMMAND ALL OFF **");
		
}else if(global.command_all == false)
{
	// Turn command_all on
	global.command_all = true;
	
	// Set sprite frame to frame 1
	image_speed = 0;
	image_index = 1;
		
	show_debug_message("** COMMAND ALL ON **");
}