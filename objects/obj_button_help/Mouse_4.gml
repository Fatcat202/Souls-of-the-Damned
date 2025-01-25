/// @description Insert description here


//layer_destroy_instances("Menu_Buttons")
instance_deactivate_layer("Menu_Buttons")

// Create new help screen object
if !instance_exists(obj_help_screen)
{
    instance_create_layer(global.cam_target_x + (global.res_w / 2), global.cam_target_y + (global.res_h / 2), "HUD_Buttons", obj_help_screen);
}
// Create new back object 1 layer above help screen obj
if !instance_exists(obj_button_back)
{
	instance_create_layer(obj_help_screen.x, obj_help_screen.y + 120, "Menu_Buttons", obj_button_back);
}