/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_help_screen))
{
	// Destroy button and help screen
	instance_destroy(obj_help_screen)
	instance_destroy()
	
	// Reactivate buttons
	instance_activate_layer("Menu_Buttons")
}