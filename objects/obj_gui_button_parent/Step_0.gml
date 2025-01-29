/// @description Create Description

// Check if timer is active
if(desc_timer_active == true)
{
	// Increment timer for 60 frames
	desc_timer++
	
	if(desc_timer >= 60)
	{
		// If description object does not exist, create object

			var desc = instance_create_layer(mouse_x - 100, mouse_y + 20, "HUD_Buttons", obj_description)
			scr_test()

		
		
		// Prevent infinite addition
		desc_timer = 60;
	}
} else
{
	if(instance_exists(obj_description)) instance_destroy(obj_description);
	
	desc_timer = 0;
	
}
