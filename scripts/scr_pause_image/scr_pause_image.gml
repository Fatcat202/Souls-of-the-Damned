// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pause_image()
{
	layer_create(600, "Pause_Sprites");
	with(obj_attacks_parent)
	{

		var sprite = layer_sprite_create("Pause_Sprites", x, y, sprite_index);
			layer_sprite_xscale(sprite, image_xscale);
			layer_sprite_yscale(sprite, image_yscale);
			layer_sprite_angle(sprite, image_angle);
			layer_sprite_index(sprite, image_index);
			layer_sprite_speed(sprite, 0);
			layer_sprite_blend(sprite, image_blend)
			
	}
	
	with(obj_enemy_parent)
	{

		var sprite = layer_sprite_create("Pause_Sprites", x, y, sprite_index);
			layer_sprite_xscale(sprite, image_xscale);
			layer_sprite_yscale(sprite, image_yscale);
			layer_sprite_angle(sprite, image_angle);
			layer_sprite_index(sprite, image_index);
			layer_sprite_speed(sprite, 0);
			layer_sprite_blend(sprite, image_blend)
			
	}
}

		// ** OLD PAUSE IMAGE SYSTEM **
		// ** BACKGROUND SPRITE METHOD **

	// Capture game moment (except GUI as GUI is rendered independently)
/*
	
	// Adding background sprite ** IN PROGRESS **
	var spr_temp_background = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, surface_get_width(application_surface) / 2, surface_get_height(application_surface) / 2)
	
	// Place new background sprite over where camera is located
	var background_pause_layer = layer_get_id("Pause")
	var background_pause_id = layer_background_get_id(background_pause_layer);
	layer_background_sprite(background_pause_id, spr_temp_background)
	layer_x(background_pause_layer, global.cam_x)
	layer_y(background_pause_layer, global.cam_y)
	
	// Make pause layer visible
	layer_background_visible(background_pause_id, true)

	// Make background layer invisible
	var background_layer = layer_get_id("Background")
	var background_id = layer_background_get_id(background_layer);
	layer_background_visible(background_id, false)

*/