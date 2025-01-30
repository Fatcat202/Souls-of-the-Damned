/// @description Text

// Inherit the parent event
event_inherited();


if(instance_exists(obj_player_parent)) player_name = obj_player_parent.player_name
if(instance_exists(obj_com_pause_parent)) player_name = obj_com_pause_parent.player_name

switch (player_name)
{
	case "Alok":
			
		name = "WARHAMMER"
		
		description = "Alok's holy warhammer, it crushes foes."

			
	break;
		
	case "Xan":
	
		name = "RIFLE"
		
		description = "Xan's custom rifle, it has 4 shots which must be reloaded after being fired."
	
	break;
		
	case "Dogan":
	
		name = "RAPIER"
		
		description = "Dogan's silver rapier, it puts holes in foes."
	
	break;
		
	case "Seki":
		
		name = "ARCANE BLAST"
		
		description = "A basic arcane blast, dealing damage with each hit and has a limited range. Colliding with other magic will destroy both this blast and the other magic."
	
	break;
		
}

