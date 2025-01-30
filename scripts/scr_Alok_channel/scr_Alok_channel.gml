function scr_Alok_channel()
{
	
	var channel = instance_create_layer(x, y, "Projectiles", obj_Alok_channel)
		channel.alarm[0] = 60
		channel.timer_length = 60
		channel.scale_total = 500
		
	var range = 200;
	// Heal all players within range 100, 6 second cooldown

	// Heal self
	with(obj_player_parent)
	{
		// Heal by 30
		scr_heal(30, 0);
	}
	
	// Heal allies if within range
	with(obj_npc_parent)
	{
		if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) <= range)
		{
			// Heal by 30
			scr_heal(30, 0);
		}
	}
		
	
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 6;
	
	// States attack was used for cooldowns
	used = true
}