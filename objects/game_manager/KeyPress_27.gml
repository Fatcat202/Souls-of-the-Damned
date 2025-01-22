/// @description ESC Pause

if(global.game_esc_paused = false)
{
	global.game_esc_paused = true;
	layer_destroy_instances("HUD_Buttons");
	scr_esc_pause();
	
	instance_create_layer(0, 0, "Game_Manager", obj_esc_menu);
	instance_activate_object(obj_esc_menu)

}else 
{
	global.game_esc_paused = false;
	scr_esc_resume();

	instance_destroy(obj_esc_menu)
	layer_destroy_instances("Menu_Buttons")
}
