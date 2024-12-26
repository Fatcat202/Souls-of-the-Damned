/// @description Combat Pause Surface
// You can write your code in this editor
/*
if global.game_combat_paused == true
{
	if !surface_exists(global.combat_pause_surf)
    {
		if global.combat_pause_surf == -1
        {
			instance_deactivate_object(all);
			instance_activate_object(game_manager);
			instance_activate_object(obj_combat_pause_parent);
        }
		global.combat_pause_surf = surface_create(room_width, room_height);
		surface_set_target(global.combat_pause_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
    }
}
*/