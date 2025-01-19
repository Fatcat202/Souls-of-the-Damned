/// @description ESC Pause

if(global.game_esc_paused = false)
{
	global.game_esc_paused = true;
	scr_esc_pause();
	
	instance_create_layer(0, 0, "Menu_Buttons", obj_esc_menu);
	instance_activate_object(obj_esc_menu)

}else 
{
	global.game_esc_paused = false;
	scr_esc_resume();

	layer_destroy_instances("Menu_Buttons")
}
