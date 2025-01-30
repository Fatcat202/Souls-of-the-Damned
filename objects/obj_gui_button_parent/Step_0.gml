/// @description Create Description


// Check if timer is active
if(desc_timer_active == true)
{
	// Increment timer for 60 frames
	desc_timer++;
	
	if(desc_timer >= 60)
	{
		// If description object does not exist, create object
		if(!instance_exists(obj_description))
		{
			var desc = instance_create_layer(mouse_x - 100, mouse_y + 20, "HUD_Buttons", obj_description)
				desc.x = mouse_x - 100
				desc.y = clamp(mouse_y + 20, global.cam_y + (sprite_get_height(spr_description_box) / 2)
									, global.cam_y + global.res_h - (sprite_get_height(spr_description_box) / 2));
			
		}else
		{
			// Update description position every step if it exists
			
		//	obj_description.x = clamp(mouse_x - 100, (global.res_w + spr_description_box / 2))
		//	obj_description.y = mouse_y + 20;
			
			
			obj_description.x = mouse_x - 100
			obj_description.y = clamp(mouse_y + 20, global.cam_y + (sprite_get_height(spr_description_box) / 2)
									, global.cam_y + global.res_h - (sprite_get_height(spr_description_box) / 2));
			
			
		}

		// Prevent infinite addition
		desc_timer = 60;
	}
}
