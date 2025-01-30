/// @description Create Description


// Check if timer is active
if(desc_timer_active == true)
{
	// Increment timer for 60 frames
	desc_timer++
	
	if(desc_timer >= 60)
	{
		// If description object does not exist, create object
		if(!instance_exists(obj_description))
		{
			var desc = instance_create_layer(mouse_x - 100, mouse_y + 20, "HUD_Buttons", obj_description)
			scr_test()
		}else
		{
			obj_description.x = mouse_x - 100;
			obj_description.y = mouse_y + 20;
		}

		// Prevent infinite addition
		desc_timer = 60;
	}
}
