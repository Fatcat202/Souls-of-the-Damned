/// @description Update Sprite Index and Text

event_inherited()

// Check if combat paused
if(global.game_combat_paused || global.show_inventory)
{
	if(obj_com_pause_parent.active_power == 2)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
} else // If not combat paused
{
	if(obj_player_parent.active_power == 2)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}


var player_name
if(instance_exists(obj_player_parent)) player_name = obj_player_parent.player_name
if(instance_exists(obj_com_pause_parent)) player_name = obj_com_pause_parent.player_name

switch (player_name)
{
	case "Alok":
			
		name = "SHIELD"
		
		description = "Alok's shield, it protects against attacks when in use."

			
	break;
		
	case "Xan":
	
		name = "POWERFUL SHOT"
		
		description = "Xan fires a combined shot, using 2 uses of ammo but providing more power. The shot will travel through foes and stun them, but also has extra recoil."
	
	break;
		
	case "Dogan":
	
		name = "POISON"
		
		description = "Dogan poisons his blade, dealing damage over time to foes."
	
	break;
		
	case "Seki":
		
		name = "ARCANE BLAST"
		
		description = "Seki launches an explosive fireball, damaging all foes within range."
	
	break;
		
}