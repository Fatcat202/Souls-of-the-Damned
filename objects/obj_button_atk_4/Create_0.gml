/// @description Text

// Inherit the parent event
event_inherited();



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