
function scr_apply_dot(dmg_dice_num, dmg_dice_sides, dmg_mod, tick_rate, duration, _can_kill)
{

	// Create dot data packet
	var dot_info = [];

	// Damage applied per application
	dot_info[dot_data.dmg_dice_num] = dmg_dice_num;
	dot_info[dot_data.dmg_dice_sides] = dmg_dice_sides; 
	dot_info[dot_data.dmg_mod] = dmg_mod; 
	// Frequency of dot in seconds
	dot_info[dot_data.tick_rate] = game_get_speed(gamespeed_fps) * tick_rate; 
	// Duration of dot in seconds
	dot_info[dot_data.duration] = game_get_speed(gamespeed_fps) * duration;
	// Defines if effect can kill
	dot_info[dot_data.can_kill] = _can_kill;

	// Send dot data to affected object
	array_push(other.debuffs, dot_info); 
}