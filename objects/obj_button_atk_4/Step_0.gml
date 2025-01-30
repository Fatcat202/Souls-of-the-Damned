/// @description Update Sprite Index and Text

event_inherited()

// Check if combat paused
if(global.game_combat_paused == true)
{
	if(obj_com_pause_parent.active_power == 4)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
} else // If not combat paused
{
	if(obj_player_parent.active_power == 4)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}

if(instance_exists(obj_player_parent)) player_name = obj_player_parent.player_name
if(instance_exists(obj_com_pause_parent)) player_name = obj_com_pause_parent.player_name

switch (player_name)
{
	case "Alok":
			
		name = "CHANNEL"
		
		description = "Alok channels divine power, healing all allies around him."

			
	break;
		
	case "Xan":
	
		name = "FLY"
		
		description = "Xan spreads his wings, launching himself into the air and giving himself a speed boost."
	
	break;
		
	case "Dogan":
	
		name = "SNEAK ATTACK"
		
		description = "As an expert in anatomy Dogan knows weak spots to aim for. Gain a 50% critical chance for a limited time."
	
	break;
		
	case "Seki":
		
		name = "TELEPORT"
		
		description = "Seki visualizes being elsewhere, teleporting him where he wishes."
	
	break;
		
}