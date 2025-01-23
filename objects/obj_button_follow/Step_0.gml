/// @description Update Sprite Index

event_inherited()

if(instance_exists(obj_com_pause_parent))
{

	if(obj_com_pause_parent.command_state == "follow_state")
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}
